%read the image
I = imread('X.jpg');
imshow(I);
		
%Extract RED, GREEN and BLUE components from the image
R = I(:,:,1);
G = I(:,:,1);
B = I(:,:,1);

%save variable R to a file in HEX format for the chip to read
fileID = fopen ('spriteXR.mem', 'w');
for i = 1:size(R(:), 1)-1
    fprintf (fileID, '%x\n', R(i)); % R (dec) -> print to file (hex)
end
fprintf (fileID, '%x', R(size(R(:), 1))); % R (dec) -> print to file (hex)
fclose (fileID);

%save variable G to a file in HEX format for the chip to read
fileID = fopen ('spriteXG.mem', 'w');
for i = 1:size(G(:), 1)-1
    fprintf (fileID, '%x\n', G(i)); % G (dec) -> print to file (hex)
end
fprintf (fileID, '%x', G(size(G(:), 1))); % G (dec) -> print to file (hex)
fclose (fileID);

%save variable B to a file in HEX format for the chip to read
fileID = fopen ('spriteXB.mem', 'w');
for i = 1:size(B(:), 1)-1
    fprintf (fileID, '%x\n', B(i)); % B (dec) -> print to file (hex)
end
fprintf (fileID, '%x', B(size(B(:), 1))); % B (dec) -> print to file (hex)
fclose (fileID);
