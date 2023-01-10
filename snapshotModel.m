function snapshotModel(model)
open_system(model)
print(['-s',model],'-djpeg','-r1000',[model,'.jpeg'])
close_system(model)
imshow([model,'.png'])
end