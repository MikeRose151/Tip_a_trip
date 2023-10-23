# Tip-A-Trip
**Tip-A-Trip** is a platform for keen travellers to create, and get inspired by, customised travel itenaries.

| Problem  | Solution |
| :------------- | :------------- |
| Planning holiday itineraries is time-consuming  | A platform with a collection of users' itineraries to take inspiration from  |
| After you go on holiday, your holiday itinerary rarely gets seen again  | The platform also allows you to share your past trips with other users (and family/friends) and enables you to relive your trips  |

---------------------------------------

### The 2 Main User Stories:
| User | Personality | Use of Tip-A-Trip |
| :-------------: | :-------------: | :-------------: |
| Tripper Trina  | 🗺️ Loves going on vacation <br>  🤓 Thinks through everything well in advance <br> 🗂️ Loves to be in control and plan out a bespoke itinerary wherever they go <br> 🗣️ Wants to help other travellers make the most of their vacations | To build itineraries for their vacations <br> using the listed activities, and <br> later share with other users |
| Lazy Susan  | 🗺️ Loves going on vacation <br> 🤪 Very last-minute and spontaneous <br> 😵‍💫 Hates planning; finds it daunting and boring <br> 🕵️ Has no shame in copying exactly what others do  | To select and use itineraries <br> already curated by fellow users <br> like Tripper Trina |

----------------------------------------

### Database Schema explained:

![schema](readme_schema.png)

Step 1:
Tripper Trina (USER) decides to create an itinerary (ITINERARY) for their upcoming trip to London (DESTINATION).

Step 2:
Tip-A-Trip will guide Trina to a list of activities available to do in London, which Trina can favourite or ignore based on if they're interested in doing that activity on their trip. Tripper Trina likes the look of the London Eye (ACTIVITY) and Borough Market (another ACTIVITY) and "favourites" both of those activities (FAVOURITE x2).

Step 3:
Tip-A-Trip then guides Trina to the itinerary's building page, where the user can see a list of their favourited activities located in the destination of that itinerary (in this case, Trina will see the London activities they favourited) - favourites are essentially a shortlist of activities for their itinerary. Trina will then confirm which of those favourites to actually add to their itinerary. For instance, Trina decides to against including the London Eye on their itinerary but includes Borough Market (ITINERARY ACTIVITY).

----------------------------------------

### Demo:

[Video coming soon!]

----------------------------------------

### Ideas for Future Development:

<ins>Technical:</ins>
- Time allocation/calculation
- Map integration
- Private section to upload holiday photos etc. to share with friends/family
- Incentive/gamification to encourage users to make good itineraries

<ins>Business:</ins>
- Partnerships with tourism boards
- Partnerships with tourist attractions
