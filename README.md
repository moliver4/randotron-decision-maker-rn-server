# Choices aka Randotron Decision Maker

Choices Decision Maker (previously was affectionately named Randotron thanks to a Rick and Morty Heist episode inspiration). 
I created this React Native app to be used on ios (mainly what I developed for) and android.

Decision fatigue is something that affects everyone on a daily basis, whether we notice it or not. There have been many studies that show professionals' decision making abilities deteriorate as the day wears on. 

Sometimes, we spend so much time deciding things relating to our job or our family, we don't want to waste any more precious energy on just deciding where to eat or what to watch. 

So I created this Choices App. This app is meant to help with those trivial decisions and to alleviate some awkward social situations (like deciding whose car to take or who foots the bill). 

DISCLAIMER: It is (obviously) absolutely not meant for huge life decisions like deciding if you should get married or buy a house and all advice should be taken with a grain of salt. Use common sense. 

![DEMO PART 1](https://github.com/moliver4/randotron-decision-maker-rn-client/blob/master/assets/demo1.gif)

![DEMO PART 2](https://github.com/moliver4/randotron-decision-maker-rn-client/blob/master/assets/demo2.gif)

## App Usage
This is the backend API for the Client Front End. 
Please visit the Client repository [HERE](https://github.com/moliver4/randotron-decision-maker-rn-client).

This app will eventually be published with the Expo library. To Access, please download the Expo application and scan the QR code at this link with your camera and launch the Expo app.

Choose your login as a Guest or with Google.

If you Login with Google, your account will be created/fetched, and your questions will be persisted if you desire them to be. This is great if you always eat similar things and just want to re-run the same question.

The most recently run question will always be pushed to the top so you won't loose any.

As a guest, nothing will be saved, but the current question can be rerun.

If you or your group are leaning more toward one option than another, feel free to add additional 'weight' to that option. This will be taken into account as needed during the random, but now weighted, calculation.

## Installation && Usage Locally

To access the code, feel free to Fork, copy your url and ```git clone <url>```
Use the package manager and run ```bundle install``` to install needed gems.

```bash
bundle install
```
To create the PostGres Database: 
```bash
rails db:create
```

To create the Migrate Database: 
```bash
rails db:migrate
```

Make sure to install the front end as well in order to use this API.

## Made with/gems:
-ruby ~> '2.6.1'
-rails, ~> 6.0.2
-pg, >= 0.18, < 2.0
-puma, ~> 4.1
-rack-cors
-spring


## TODOS 
I would like to transfer the backend server to firebase so it can all be used at once with Google Auth. Otherwise, would like to publish in the android and ios app stores. 

I would also like to add a social aspect in terms of sharing decisions amoung groups.

## Contributing
Pull requests are welcome! For major changes, please open an issue first to discuss what you would like to change.

Please make sure to update tests as appropriate.

## License
Logo designed at [Canvo](www.canvo.com)