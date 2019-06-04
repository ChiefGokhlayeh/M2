function I = fourierInt(f,h)
//
// INPUT
// f ... function sample values
// h ... step size
//
// OUTPUT
// I ... integral
   
    I = h * sum(f);
    
endfunction
