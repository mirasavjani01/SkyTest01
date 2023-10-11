import { Given, When, Then } from '@wdio/cucumber-framework';
//import assert = require('assert');
import * as assert from 'assert';

Given("the User is on the Sky News UK page", () => {
    browser.url('');
});

When("the User clicks on {string}", (tab) => {
    
    const tabTitle = `//a[@data-tracking-label='site-header/nav/${tab}']`;
    // Wait for the tab element to be clickable and click it.
    $(tabTitle).waitForClickable({ timeout: 10000 });
    $(tabTitle).click();
});

//lines 19-28 doesn't get title and is not used but doesn't like being deleted, so kept in

async function getTitle() {
    const titleSelector = `//title[contains(text(), 'Sky News')]`;
    const titleElement = $(titleSelector);
  
    // Use await with waitForExist to ensure the element is ready
    await titleElement.waitForExist();
  
    const actualTitleText = await titleElement.getText();
    return actualTitleText; // Return the text
  }

  Then(/^the browser's tab title "([^"]*)" is displayed$/, async (expectedTabTitle) => {
    // Call the async function and use await to get the title text
    //const actualTitleText = await getTitle();

    // lines 35-37 doesn't get title and is not used, same as above.
    const actualTitleText = await browser.execute(() => {
        return document.title;
      });

      // Variable on line 40 is used in line 47
      const actualBrowserTitle = await browser.getTitle();

      // Introduce a 5-second delay to see the tests perform
    await new Promise(resolve => setTimeout(resolve, 3000)); // 5000 milliseconds = 5 seconds
  

    //assert(actualBrowserTitleText.includes(expectedTabTitle));
    assert.ok(actualBrowserTitle.includes(expectedTabTitle));
  });