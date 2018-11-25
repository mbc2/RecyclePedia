# Purpose
When traveling it is often hard to keep up with what materials can be recycled in each city you go to. Every location has different
regulations on what can be recycled and that information can sometimes be difficult to find. To make it easier, we want to create a
website that will give you information on recycling in each city/state in the US. Users will be able to type in where they are and then
get specific information on recycling for that location. 

# Features and Capabilities

| Feature | Priority |
| --- | --- |
| Filter recycling codes based on zipcode | 0 |
| Provide graphics slides to demonstrate HOW to recycle individual items properly (breaking down boxes, cleaning bottles, discarding bottle caps, etc) | 0 |
| Find recycling centers around you using gps | 0 |
| Navigate state websites to find recycling information | 0 |
| Buttons on “why do i have to do this” - use data analytics to report how often some item is misrecycled in an area and the effects of misrecycling | 1 |
| Interactive US map so you could click your state, zoom in and click your county (if its different by county), and navigate to the recycling rules that way | 1 | 
| Organize rules based on graphics cards for paper, glass, plastic, etc | 1 | 
| Could link it to CWRU and find all the recycling bin locations (should be reported by the Green Ambassadors) | 2 |

# Definition of "Done"

* Have at least 3 zipcodes whose recycling policies are listed and functional on website

# Functional Test
 
| Item to Test | Test Description | Responsibility | Result|
| --- | --- | --- | --- |
| WEBPAGE-01 | Ensure the “Home” page loads with proper images and framework | RecyclePedia Team | Pass |
| WEBPAGE-02 | Ensure the “About” page loads with proper images and framework | RecyclePedia Team | Pass |
| WEBPAGE-03 | Ensure the “Why Recycle” page loads with proper images and framework | RecyclePedia Team | Pass |
| WEBPAGE-04 | Ensure the “Help” page for material loads with proper images and framework | RecyclePedia Team | Pass |
|DETAILS-01 | The user should be able to type zip codes into the search box | RecyclePedia Team | Pass
| NAV-01,NAV-02, NAV-03 | The user should be able to click on the links in the navigation bar | RecyclePedia Team | Pass |
| SEARCH-01 | Verify the inputted zip code is one supported by the database | RecyclePedia Team | Pass |
| SEARCH-02 | Verify that the search function will not work without any text in the box | RecyclePedia Team | -Bug- |
| TEXT-01 | Verify that the font of the text displayed on the webpage is as per specified. | RecyclePedia Team | Pass |
| DATABASE-01 | Verify that information loaded from the database is as per specified by the zip code. | RecyclePedia Team | Pass |

# Performance Test

| Item to Test | Test Description | Responsibility | Result | Time |
| --- | --- | --- | --- | --- |
| WEBPAGE-01 | Ensure the “Home” page loads in no greater than  5 seconds. | RecyclePedia Team | Pass |< 1 sec |
| WEBPAGE-02 | Ensure the “About” page loads in no greater than 5 seconds. | RecyclePedia Team | Pass | < 1 sec |
| WEBPAGE-03 | Ensure the “Why Recycle” page loads in no greater than 5 seconds. | RecyclePedia Team | Pass | < 1 sec |
| WEBPAGE-04 | Ensure the “Help” page for material loads in no greater than 10 seconds. | RecyclePedia Team | N/A | Not implemented |
| SEARCH-01 | Ensure search happens in no greater than 15 seconds. | RecyclePedia Team | Pass | < 2 sec |
| IMAGE-01 | Ensure all images load in no greater than 5 seconds. | RecyclePedia Team | Pass | < 1 sec |
| MAP-01 | Ensure the map loads in no greater than 5 seconds. | RecyclePedia Team | Pass | < 1 sec |
| MAP-02 | Ensure the state web pages load in no greater than 5 seconds. | RecyclePedia Team | N/A | -Bug-|


    