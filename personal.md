
# Extended / _Personal_ "Why?"

> **Note**: Skip this if you just want to crack on with learning!

I switched back to `iPhone` from `Android` in 2021
when `Google` stopped supporting/updating my 
[`Pixel 3`](https://en.wikipedia.org/wiki/Pixel_3)
(which I _loved_) after less than 3 years of owning it.


> **`Android` updates officially ended** for the `Pixel 3` on **October 5 2021**; 
> **3 years** after **launch**! <br />
> 3 Year _useful_ life is _obnoxious_ 
[planned obsolescence](https://en.wikipedia.org/wiki/Planned_obsolescence).
> I got mine in **March 2019** so had **_less_ than 3 years** of supported use! 😢 

Meanwhile my _ancient_ 
[`iPhone 6`](https://en.wikipedia.org/wiki/IPhone_6) 
from **2014** - 
that I use for guided meditation -
still works fine. <br />
I used it because it has a headphone jack! 🎧
`Apple` "bravely" removed the headphone jack in `iPhone 7`
and the `Lightning <-> 3.5mm Jack Adapter` is garbage.
I've had 3 of the _Official_ Apple ones and they are **_deliberately_ flimsy**!
So I have zero intention of letting go 
of my `iPhone 6` with it's headphone jack!

`iPhone` have a _much_ longer useful life (on average)
than comparable devices from other brands; 
see below for _why_ ...
Yes, there are people still using 10+ year old `Samsung` devices
that they've taken good care of.
These people either don't _care_ about security updates
or they have rooted the device to use a 
[custom ROM](https://en.wikipedia.org/wiki/Custom_firmware#Android)
and not need to rely on _official_ `Android` updates.
But these are definitely the exception, not the rule.

According to `Android Police`,
the average lifespan of an `Android` smartphone 
is **2.54-2.67 years**. <br />
ref: 
[androidpolice.com/how-long-should-a-smartphone-last](https://www.androidpolice.com/how-long-should-a-smartphone-last/)

`Google` _recently_ (finally) listened to customers
who complained about the short life (support cycle)
for `Android` devices and has now committed to 
[**7 years**](https://9to5google.com/2024/04/21/google-pixel-7-years-updates-meaning/)
of support for _new_ `Pixel` devices. 
But this is not extended back to older devices 
e.g: 5 years old,
only the `new` ones you buy from now on. 🙃

Again, my **`10+ Year Old`** `iPhone` still works without issues.

## Business Case

`Apple` has been doing a _much_ better job
of supporting older devices
because they are "**_free_ money**" to them.
Each _active_ `iOS` device is a potential customer for
the `AppStore`, `iCloud`, `Music` or `TV+` subscription. <br />
`Apple` currently makes **`$96bn/year`** 
in recurring revenue from **services**,
so `Apple` has every incentive 
to keep older devices active.

<img width="908" height="451" alt="Image" src="https://github.com/user-attachments/assets/c8b2301e-830f-4e1c-afa8-ee9613b648c9" />

Source: 
[trefis.com/data/companies/AAPL/7JGMQ7wT/Breaking-Down-Apple-s-Services-Revenue](https://www.trefis.com/data/companies/AAPL/no-login-required/7JGMQ7wT/Breaking-Down-Apple-s-Services-Revenue-)

> **`Apple` _created_** the smartphone **`App` _economy_**
> when they 
[launched the `AppStore` in 2008](https://en.wikipedia.org/wiki/App_store#Smartphone_app_stores). <br />
> `iPhone` continues to dominate mobile App developemtn in every respect.
> Hence the _many_ lawsuits against `APPL` for antitrust:
[theverge.com/24107581/apple-antitrust-monoply](https://www.theverge.com/24107581/doj-v-apple-antitrust-monoply-news-updates) <br />
> Even `if` the `DOJ`/`EU` successfully suit `APPL`,
> it will be at _best_ a 
> [wrist-slap](https://en.wiktionary.org/wiki/wrist-slap#Verb). 🙄 <br />
> Their devices & `AppStore` will _still_ out-sell everyone `else`
> and remain the **_best_ place** to **launch `Apps`**. 

`iPhone` is definitely not perfect,
it's a **_closed_ platform** with **_strong_ lock-in**;
often referred to as a 
["walled garden"](https://en.wikipedia.org/wiki/Closed_platform). 
Customers effectively pay `APPL` _rent_
for `iCloud` and other services
which are _adequate_ but not amazing.
If there was a truly _open_ alternative
that wasn't run by an `Ad` company 
that harvests _all_ your data,
we would switch!

But for all the `iPhone` flaws,
it's still the most popular _single_ device in the world by far.
It's not even close:

<img width="783" height="443" alt="smartphone sales" src="https://github.com/user-attachments/assets/0932534e-96d2-42d0-85fa-b03096cdc514" />

Source:
[counterpointresearch.com/insight/global-smartphone-sales-top-10-best-sellers](https://www.counterpointresearch.com/insight/global-smartphone-sales-top-10-best-sellers)

So, as **_small_ team** of **`people`** building apps
we need for _ourselves_ in our daily lives
and that _hopefully_ other `people` will love too,
we have to pick the platform 
where the most _paying_ `people` are, 
to help us keep the lights on; 
that's `iOS`/`iPhone`.


## Why Do _I_ Want to Build a _Native_ `iOS` App?

As a [reluctant] `iOS`, `macOS` & `Apple Watch` "**_power_ user**",
**I want** to build a **_Native_ App** 
that **loads and runs as fast as possible**.
Our experience of using `Flutter` was that it was 20-30% slower to load
than a comparable `Swift`/`Objective-C` (truly native) app.
Our _basic_ app would often get stuck on the splash screen for multiple seconds on latest `iOS` devices (`iPhone 15 Pro/Max` at the time...), this was unacceptable.

Finally there is no other way to build an `Apple Watch` or `iOS` home screen widget
than to use `SwiftUI`. <br />
Since I want to build _both_ of these 
and use other native-only APIs like
"[Dynamic Island](https://support.apple.com/en-gb/guide/iphone/iph28f50d10d/ios)" -
a 
[   gimmick](https://www.reddit.com/r/iphone/comments/x8vp9o/do_you_think_the_dynamic_island_is_a_gimmick/) 
for sure but a _delightful_ interaction -
I _have_ to use `SwiftUI`. 

## `Android` Has 24 _Thousand_ Devices!

The "`Android` is for _everyone_" page: 
https://www.android.com/everyone/ 
proudly states:
"_There are now nearly **1,300 brands** 
that have produced over **24,000 distinct Android devices**_"

<img width="1256" alt="Image" src="https://github.com/user-attachments/assets/47b5f4d6-8b0f-4c06-ac0f-236b7d7879a8" />

This sounds _great_ for diversity of options, 
but _horrendous_ for anyone needing to create an App 
that even _attempts_ to look _good_ on all these devices, 
never mind trying to 
[QA](https://en.wikipedia.org/wiki/Quality_assurance)
on a _representative_ sample of these devices. 