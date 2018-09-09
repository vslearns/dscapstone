typist
========================================================
author: Vanshaj S.
date: 
autosize: true

About typist
========================================================

typist was created as the final product for the <strong>Coursera Data Science Specialization Capstone Project</strong>.

The goal of this project was to create a predictive text model using a provided corpus of the English language.

As a result, I created typist -- a model that predicts a user's next word based on the one, two, or three preceding words.

How it works
========================================================

The way typist works is as follows:
- A predictive text model was created and smoothed (using Kneser-Ney smoothing) beforehand
- The typist server has access to three n-gram models, each with a different n
- A user inputs a string of preceding words of indefinite length, of which the last three are used
- typist searches each n-gram model for a prediction, and returns the most probable prediction, similarly to a predictive mobile keyboard

Reasons to use it
========================================================

typist is an easy-to-use web-based application that allows you to quickly get predictions for incomplete text. 
Ever stumbled upon a random, incomplete Tweet? typist can help you complete the thought so you know what's really
going on!

To use typist, head on over to the <a href="https://vslearns.shinyapps.io/dscap">typist web-app</a> on shinyapps.io. 
For documentation, see the next slide.

Basic documentation
========================================================

The typist web-app presents you with a very simple interface -- there is an output panel on the left and an input 
panel on the right. The latter consists simply of a textual input box, where you can input the words you have, 
following which typist will compute and present you with the result in the output panel.

typist has a relatively low accuracy -- this is because
- typist was created by someone who's just starting out in Data Science
- typist was made to prioritize speed over accuracy, as a mobile device can't spend hours computing predictions
- typist is hosted on shinyapps.io, which doesn't grant enough memory to host a sophisticated model

Nonetheless, typist works fairly for common phrases, such as "hello my name [is]" and "these clothes are machine [washable]".

Credits
========================================================

Shoutout to the Internet for providing adequate documentation to allow me to create a fairly usable predictive text 
model. Also shoutout to Coursera and Johns Hopkins University for allowing me to pursue my passion of statistics in 
a rather enjoyable way.
