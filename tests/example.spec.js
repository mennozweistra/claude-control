const { test, expect } = require('@playwright/test');

test('basic example test', async ({ page }) => {
  await page.goto('https://playwright.dev/');
  
  // Expect a title "to contain" a substring.
  await expect(page).toHaveTitle(/Playwright/);
  
  // Click the get started link.
  await page.getByRole('link', { name: 'Get started' }).click();
  
  // Expects the URL to contain intro.
  await expect(page).toHaveURL(/.*intro/);
});