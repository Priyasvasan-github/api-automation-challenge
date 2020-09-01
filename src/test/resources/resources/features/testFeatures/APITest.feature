Feature: Validate email address of comments from posts

  @Regression @wip
  Scenario: verify posts are displayed correctly
    Given A super user is accessing the portal
    When He fetch the posts created by him
    Then all the posts of him are displayed as expected
    When He fetch the comments for those posts
    Then All the comments are displayed
    And All of them have a valid email address

  @Regression
  Scenario: Verify emails On Comments of posts for user Delphine are valid
    Given A default user is accessing the portal
    When he retrieves comments on his posts
    Then Comments of default user have valid email address

  @Regression
  Scenario: Verify emails on All comments are valid
    Given A admin user is accessing the portal
    When he retrieves comments on all posts
    Then Comments of all users have valid email address