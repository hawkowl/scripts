-- Stop traders bringing blood, ichor, or goo
--author Urist Da Vinci; edited by expwnent, scamtank
--[====[

fix/blood-del
=============
Makes it so that future caravans won't bring barrels full of blood, ichor, or goo.

]====]
local my_entity=df.historical_entity.find(df.global.plotinfo.civ_id)
local k=0
local v=1

for x,y in pairs(df.global.world.entities.all) do
 my_entity=y
 k=0
 while k < #my_entity.resources.misc_mat.extracts.mat_index do
  v=my_entity.resources.misc_mat.extracts.mat_type[k]
  local mat=dfhack.matinfo.decode(v,my_entity.resources.misc_mat.extracts.mat_index[k])
  if (mat==nil) then
   --LIQUID barrels
   my_entity.resources.misc_mat.extracts.mat_type:erase(k)
   my_entity.resources.misc_mat.extracts.mat_index:erase(k)
   k=k-1
  else
   if(mat.material.id=="BLOOD") then
    my_entity.resources.misc_mat.extracts.mat_type:erase(k)
    my_entity.resources.misc_mat.extracts.mat_index:erase(k)
    k=k-1
   end
   if(mat.material.id=="ICHOR") then
    my_entity.resources.misc_mat.extracts.mat_type:erase(k)
    my_entity.resources.misc_mat.extracts.mat_index:erase(k)
    k=k-1
   end
   if(mat.material.id=="GOO") then
    my_entity.resources.misc_mat.extracts.mat_type:erase(k)
    my_entity.resources.misc_mat.extracts.mat_index:erase(k)
    k=k-1
   end
   if(mat.material.id=="SWEAT") then
    my_entity.resources.misc_mat.extracts.mat_type:erase(k)
    my_entity.resources.misc_mat.extracts.mat_index:erase(k)
    k=k-1
   end
   if(mat.material.id=="TEARS") then
    my_entity.resources.misc_mat.extracts.mat_type:erase(k)
    my_entity.resources.misc_mat.extracts.mat_index:erase(k)
    k=k-1
   end
   --VENOM
   --POISON
   --FLUID
   --MILK
   --EXTRACT

  end
  k=k+1
 end
end
