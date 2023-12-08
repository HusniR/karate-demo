Feature:

  Background:

  Scenario: pathMatches('/product/{id}') && methodIs('get')
    * def id = pathParams.id
    * def  response =
    """
      {
        name: '#(id)',
        weight:#(id),
        productID:#(id)
      }
    """

  Scenario: pathMatches('review/{id}') && methodIs('get')
    * def id = pathParams.id
    * def response =
  """
    [
      {
        productId:#(id),
        reviewId: 456,
        author:"John",
        subject:"Good",
        content:"This is a good product"
      },
      {
        productId:#(id),
        reviewId: 741,
        author:"Todd",
        subject:"Very Good",
        content:"This is a fantastic product"
      }
    ]
  """

  Scenario:
    * def responseStatus = 404
