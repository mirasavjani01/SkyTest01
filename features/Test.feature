Feature: Verify Browser Tab Titles on Sky News UK

  As a user of Sky News UK,
  I want to click on various tabs and verify the browser tab's title
  So that I can ensure I am on the correct page.

 # A. As a user, I want to see a clear and descriptive title at the top of each page so that I am able
 # to easily identify the current section of the Sky News Website that I am viewing.

  Scenario Outline: Verify the browser tab's title
    Given the User is on the Sky News UK page
    When the User clicks on "<tab>"
    Then the browser's tab title "<tab title>" is displayed


    Examples:
      | tab            | tab title                                                   |
      | Home           | The Latest News from the UK and Around the World            |
      | UK             | UK News - The latest headlines from the UK                  |
      | World          | World News - Breaking international news and headlines      |
      | Politics       | Political News - International and UK Politics              |
      | US             | US News - The latest headlines from the US                  |
      | Climate        | Climate – Latest news on climate change and the environment |
      | Science & Tech | Tech News - Latest Technology and Gadget News               |
      | Business       | Business News - Markets reports and financial news from Sky |
      | Ents & Arts    | Entertainment News - Latest Celebrity & Showbiz News        |
      | Travel         | The Latest News from the UK and Around the World            |
      | Offbeat        | Weird News - Strange and Odd News Stories                   |

#B. As a user, I want to be able to easily navigate between different sections of the Sky News
# website using the tabs, so that I can quickly find news articles that are relevant to my interests.

#  Scenario: Verify the number of categories displayed and their names
#     Given the User is on the Sky News Uk page
#     Then there are '11' different categories displayed on the homepage
#     And the categories are as follows
#         | Categories     |
#         | Home           |
#         | UK             |
#         | World          |
#         | Politics       |
#         | US             |
#         | Climate        |
#         | Science & Tech |
#         | Business       |
#         | Ents & Arts    |
#         | Travel         |
#         | Offbeat        |

#  Scenario: Verify the number of categories displayed and their names under the More drop down.
#     Given the User is on the Sky News Uk page
#     When the user click on the More dropdown
#     Then there are '4' options displayed under the More dropdown
#     And the options of the drop down are as follows
#         | More Dropdown Options |
#         | Analysis              |
#         | Data & Forensics     |
#         | Videos                |
#         | Weather               |

#  Scenario: Navigate to the options under the More dropdown and validate tab's title.
#     Given the User is on the Sky News Uk page
#     When the user clicks on the '<Option>' under  ore dropdown
#     Then the browsers tab title <'tab's title>' is displayed
#        | Option            | tab's title       |
#        | Analysis          | Analysis          |
#        | Data & Forensics  | Data & Forensics  | 
#        | Videos            | Videos            |
#        | Weather           | Weather           |



# C. As a user, I want the Sky News website to default to the "Home" category when I first visit the
# website, so that I can quickly see the latest news stories without having to navigate to a different
# section. 

 # Scenario: Verify the default focus point is on the Home category.
 #    Given the User is on the Sky News home page
 #    Then the "Home" tab is highlighted
 #    And the browsers tab title 'The latest News from the UK and Around the World Sky News' is displayed
 #    And the title 'TOP STORIES' is displayed


 # Scenario: Verify that if the user clicks on 'Climate', this becomes the focus.
  #   Given the User is on the Sky News home page
  #   When the user clicks on the 'Climate' tab
  #   Then the 'Climate' tab is highlighted
  #   And the browsers tab title 'Climate - Latest news on climate change and the environment - Sky News' is displayed
  #   And the title 'CLIMATE' is displayed


# D. As a user, I want to be able to selected a news article on the Sky News website and have the correct article loaded
# on the page.

#Scenario: Select a story from the homepage. Verify that a word of your choice in the title of the article you have 
#  just selected appears once the title of the page loads.
  #   Given the User is on the Sky News home page
  #   When the user clicks on the first top story
  #   Then the user is navigated to the new page with the first top story new displayed and contains a word same as in top story 
  #   headlines




