ALTER TABLE despesas_orcamentarias DROP COLUMN contalike;
ALTER TABLE despesas_orcamentarias ADD COLUMN contalike VARCHAR(20) NULL DEFAULT '' ;
update despesas_orcamentarias set contalike = CONCAT(substring(codigo, 1, 1),'%') where substring(codigo,1,1)<>'0';
update despesas_orcamentarias set contalike = CONCAT(substring(codigo, 1, 2),'%') where substring(codigo,2,1)<>'0';
update despesas_orcamentarias set contalike = CONCAT(substring(codigo, 1, 4),'%') where substring(codigo,3,2)<>'00';
update despesas_orcamentarias set contalike = CONCAT(substring(codigo, 1, 6),'%') where substring(codigo,5,2)<>'00';
update despesas_orcamentarias set contalike = CONCAT(substring(codigo, 1, 8),'%') where substring(codigo,7,2)<>'00';
