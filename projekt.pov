#include "colors.inc" 
#include "stones.inc" 
#include "textures.inc"   
#include "shapes.inc"
#include "glass.inc"
#include "metals.inc"
#include "woods.inc"   

#declare Concrete =
   texture { pigment { granite turbulence 1.5 color_map {
    [0  .25 color White color Gray75] [.25  .5 color White color Gray75]
    [.5 .75 color White color Gray75] [.75 1.1 color White color Gray75]}}
    finish { ambient 0.2 diffuse 0.3 crand 0.03 reflection 0 } normal {
    dents .5 scale .5 }}
     
     
background {color Orange}    
light_source { <30, 10, 10> color White}    
light_source { <0, 3, -20> color White shadowless}
camera {
    location <0,0.1,-0.8>//0, 0.1, -10
    look_at <0,8,40> //0,8,30
} 


plane {y, 0 
    pigment {image_map{jpeg "biale.jpg"}}
    }  



#local tablica_pierwsze = array[25] {2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97}     
#local tablica = array[25] {2, 3, 5, 7, 11, 13, 17, 19, 23, 25, 29, 32, 36, 40, 43, 46, 49, 53, 57, 61, 65, 59, 62, 64, 97} 
#local i = 0;  
#declare End_Nr = 97;
#while(tablica[i] != End_Nr)    
    union {
        box {<0.005, 0, 0.005>,  
            <-0.005, 0.4, -0.005>   
            texture {T_Grnt9}
            pigment {image_map{jpeg "drwenol.jpeg"}}    
        
        }
        
        box {<-0.005, 0.4, -0.07>,
            <--0.005, 0.41, 0.07>
            texture {T_Grnt9}
            pigment {image_map{jpeg "drwenol.jpeg"}}

        }
        box {<0.005, 0.4, 0.06>,
            <-0.005, 0.55, 0.07>
            texture {T_Grnt9}   
            pigment {image_map{jpeg "drwenol.jpeg"}}

        } 
        box {<0.005, 0.4, -0.06>,
            <-0.005, 0.55, -0.07>
            texture {T_Grnt9} 
            pigment {image_map{jpeg "drwenol.jpeg"}}

        } 
        translate <tablica[i]/20, clock , 0>
        rotate <0,-i*360*(8/13),0>
          
    } 
    //#local R = R*1.05;
    #local i = i + 1;
#end

