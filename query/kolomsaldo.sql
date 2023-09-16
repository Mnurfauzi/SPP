-- Untuk tabel student
ALTER TABLE student
ADD SaldoBulanan DECIMAL(10, 2) DEFAULT 0,
ADD SaldoBebas DECIMAL(10, 2) DEFAULT 0;

-- Untuk tabel buktiBayar
ALTER TABLE buktiBayar
ADD nilaiBebas DECIMAL(10, 2) DEFAULT 0;
