function B = eligible(v,q)
B = ((v+q)/2) >= 92;
B = B&&(v> 88);
B = B&&(q> 88);
end
