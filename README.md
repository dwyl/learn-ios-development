<div align="center">

# Learn `iOS` Development

Notes, tips &amp; links 
for how we (re)learned 
**_Native_ `iOS` Development** in **`2025+`**. 📝 📱 ⌚️ 💻

<img  alt="iPhone in hand" src="https://github.com/user-attachments/assets/8e31ea18-9f87-4358-9593-a06569e597d7" />
<!-- image credit: https://www.apple.com/v/iphone/home/cc/images/overview/switch/switch__e1m8caetxw6e_xlarge.jpg -->

</div>

# Why?

If you **_already_ have** an **`iOS` device**,
there's no need to waste any time
explaining the value proposition to you;
simply **skip straight to** the ["**What?**"](#what) **section** below.

You probably have dozens of Apps installed on your `iPhone`
and if you want to learn how to _build_ them,
you're in the right place! 

If you _don't_ have/use an `iOS`, `iPadOS` or `macOS` device,
this repo/guide might not _feel_ relevant to you.

That's fine. You can ignore this one. 😊

<!--

But that's like saying the opposite sex 
(the _other_ 50% of people) 
is not relevant to you because you aren't one of them. 🙅 <br />
Because `iOS` / `iPhone` is 50% of the developed world;
even if you have no plans to use an `iPhone`,
they are still ubiquitous.

And if you want to work as a **_full_ stack software engineer** in **2025**,
_not_ knowing how to target the most ubiquitous platform
for software delivery,
is career suicide.

> **Note**: yes, we still prefer the `Web` 
as our App delivery platform.
But Web Browsers on Mobile Devices 
don't offer a truly _native_ experience
and still treat `PWAs` as second-class citizens; 
especially on `iOS` 
where `Apple` can't monetise `Apps` 
that aren't installed via `AppStore`.

-->

# What?

Learn `iOS` development 
using `Swift` + `SwiftUI` 
from first principles <br />
to build a **_truly_ native experience** on `iPhone`; 
the most ubiquitous device.<sup>1</sup>

<details>

<summary><sup>1</sup> This is a bit of a rabbit hole. 🐇 🕳️</summary>

## Building Apps for `Android` vs. `iOS`

_Nobody_ can say `iOS` has more "users" than `Android`,
that's patently `false`. <br />
Globally `Android` has
[3.9 billion](https://www.bankmycell.com/blog/how-many-android-users-are-there)
active users,
whereas `iPhone` has _only_
[1.56 billion](https://www.macrumors.com/2025/01/30/apple-active-devices-worldwide-record/)
active devices. <br />
But as a **_single_ device** to target when building your App,
`iPhone` has _far_ more acvtive units than **any _single_ `Android` device**
[explodingtopics.com/iphone-android-users](https://explodingtopics.com/blog/iphone-android-users)

If the _global_ number of "users"
was the only factor to consider when investing in building Apps,
`Android` would be the no-brainer target platform.

## `Android` Dominates Emerging Markets

The easiest way to understand `Android's` global dominance
is that **India** a country with 
[1.45 Billion people](https://en.wikipedia.org/wiki/Demographics_of_India), 
`Android` holds a **92%** market share, 
in **China** 
([1.4 Billion people](https://en.wikipedia.org/wiki/Demographics_of_China)), 
it has a **67%** market share 
and in the **Africa** 
([1.5 Billion people](https://en.wikipedia.org/wiki/Demographics_of_Africa))
**89%** as of June 2025. <br />
`Google` has a mass-market strategy
that focusses getting `Android`
into as _many_ hands & homes as possible
to 
[**collect** as **_much_ data as possible**](https://www.eff.org/deeplinks/2020/03/google-says-it-doesnt-sell-your-data-heres-how-company-shares-monetizes-and).

## `Apple` 

`Apple` focusses on profitability.
Both _immediate_ profits selling `iPhones`
and ongoing profits from "services".
51% percent of `Apple's` revenue comes from selling `iPhones`
and 24% comes from "services" 
[businessofapps.com/apple-statistics](https://www.businessofapps.com/data/apple-statistics/)

## 24,000 Distinct `Android` Devices

The "`Android` is for _everyone_" page 
[android.com/everyone](https://www.android.com/everyone/)
proudly states
"_There are now nearly **1,300 brands** that have produced over **24,000 distinct Android devices**_"
<img width="1256" height="558" alt="Image" src="https://github.com/user-attachments/assets/47b5f4d6-8b0f-4c06-ac0f-236b7d7879a8" />

This sounds _great_ for diversity of options,
but _horrendous_ for anyone needing to create an App
that even _attempts_ to look good on all these devices,
never mind trying to 
[QA](https://en.wikipedia.org/wiki/Quality_assurance)
on a 
[_representative_ sample](https://en.wikipedia.org/wiki/Simple_random_sample)
of these devices. 

## `iOS` Dominates Affluent Countries

Percentage of `iPhone` is strongly correlated with GDP per capita in the country:
[worldpopulationreview.com/country-rankings/iphone-market-share-by-country](https://worldpopulationreview.com/country-rankings/iphone-market-share-by-country)

<img width="1341" height="779" alt="Image" src="https://github.com/user-attachments/assets/01022cdf-3b6f-4baa-8273-2f6be722a1b3" />

E.g: `Norway` has **`70%+`** and `Denmark` has **`69%`** `iOS` market share. 
But most importantly, 
all _English_-speaking countries have **`50%<`** market share.
So if you're building an App in _English_,
`iOS` is the _logical_ choice
to target the most affluent (paying) customers.

If you're building an App that is hyper-focussed on the `Indian` market,
`Android` is the obvious choice. 

</details>

# Who?

These notes are primarily a tool to document _our_ learning journey. <br />
A reference we can consult if we need a quick refresher.
We try not to skip any steps and trouble-shoot errors when needed.
As always, our notes are fully open so that _anyone_ 
(including [ClosedAi](https://www.google.com/search?q=openai+closedai) bots) 
can learn _faster_ than we did.

If you find this repo useful, please star on `GitHub`. ⭐️🙏

# How?

This section details everything you need to get started
without excessive hand-holding.
But if you get stuck, please open an issue 

## Prerequisites

Some basic programming experience is desireable but not essential.
If you don't have _any_ prior experience in programming,
I'd recommend learning `JavaScript` or `Python` first
as the learning curve is less steep.

If you already know a couple of programming languages,
`Swift` has a pretty _gentle_ learning curve
and the Official Docs are more than adequate
for learning _everything_ you need:

https://docs.swift.org/swift-book/documentation/the-swift-programming-language/thebasics/


## Required Hardware

You'll need a `Mac` computer (laptop or desktop) 
with an `Apple Silicon` processor.
e.g: any `M1` or greater.
No need for any latest+greatest top spec `Mac`;
just the one you can afford (or already have!).

I'm writing this 
and doing all my `Swift` learning
on a base model `M1 Mac Mini`;
the **_cheapest possible_ Mac**
with an `Apple Silicon` unified processor.

`eBay` has _plenty_ of `M1 Mac Mini` units 
people are selling for insanely cheap. <br />
e.g:
[ebay.com/sch/i.html?_nkw=mac+mini+m1](https://www.ebay.co.uk/sch/i.html?_nkw=macbook+m1)

<img width="901" height="288" alt="Image" src="https://github.com/user-attachments/assets/2f1fa906-7052-4a75-85f2-6037fb2fd8f0" />

actual listing: https://www.ebay.co.uk/itm/187422360597 
(though it will have sold by the time you read this, 
there are plenty of others and the prices are always coming down!)

<img width="1464" height="910" alt="Image" src="https://github.com/user-attachments/assets/5ccf16f6-3357-4afb-91ad-3aa26d7c5246" />

That's not a typo! 
Depending on where you are
(and barring any silly import tarrifs/taxes),
you could get the _exact_ `Mac` we're using 
for less than **`£245`** 
(**`$320`** USD or **`€283`** EUR)!
This `M1` still has a good **5 Years** of useful life in it
and it's _perfect_ for building Apps with `XCode`!
Apple has no reason to discontinue supporting `M1` Macs
because every one is a potential services customer or `App` creator!
Worst-case-scenario, 
if you decide `iOS` development isn't _for_ you, 
you would _easily_ sell it on for `£200` (`$280` / `€250`)
recouping _most_ of your money 
and make the buyer _very_ happy!

If you aren't short on cash,
you can always get one with more `RAM`,
but definitely don't go out and spend a fortune 
on a brand new `Mac` just to learn `iOS` development.
Spend as _little_ money as possible just to get started.
Launch your awesome App 
and then once it _makes_ money,
you can always upgrade! 