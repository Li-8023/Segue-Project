# Segue-Project
Suppose you are developing an app that calculate the weight of a person in different planets using Storyboard. 
+ The starting view (earth view) takes the weight of the person on earth as shown in the 
  following screen shot. Form earth, the person can move to the moon view using a segue. While 
  moving to the moon, earth weight is also passed from the earth view to the moon view. The moon 
  view  calculates  the  weight  on  moon  and  display  both  earth  weight,  moon  weight,  and  the 
  message “I feel much lighter !” 
+ From the moon view, the person can go to the Jupiter or go back to the Earth using unwind segue. 
  Similar to the transit from earth to moon, moon to Jupiter transit passes the weight on earth and 
  moon to Jupiter. The Jupiter view then calculates the weight on Jupiter and shows the weight on 
  moon, weight on earth, weight on Jupiter and display the message “I feel heavier!”.  When the 
  person  is  going  back  to  the  Earth  from  the  moon  ,  the  earth  view  should  display  the  message 
  “Coming from the moon” 
+ From the Jupiter, the person can go back to the moon or to the earth using unwind segues. Then 
  the  person  comes  from  the  Jupiter  to  moon  view,  the  moon  view  should  show  the  message 
  “coming from the Jupiter”. Likewise, when the person comes from the Jupiter to Earth, the earth 
  view should show the message “Coming from the Jupiter” 
![image](https://user-images.githubusercontent.com/80284104/220000904-5824b0be-a80f-4e69-80c6-9c5844c3fbad.png)
