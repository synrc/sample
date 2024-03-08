import { browser } from 'k6/experimental/browser';
import { check } from 'k6';

export const options = {
  scenarios: {  ui: { executor: 'shared-iterations', options: { browser: { type: 'chromium' }, }, }, },
  thresholds: { checks: ['rate==1.0'], },
};

export default async function () {
  const context = browser.newContext();
  const page = context.newPage();
  try {
    await page.goto('http://localhost:8001/app/login.htm');
    const button = page.locator('#loginButton');
    button.click();
    await page.waitForNavigation();
    check(page, { body: (p) => p.locator('#logout').textContent() === 'Logout ', });
  } finally {
    page.close();
  }
}
