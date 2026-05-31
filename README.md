# ⚡ Progetti di Elettronica Digitale

Repository contenente una raccolta di progetti sviluppati in **VHDL** tramite **Xilinx Vivado** nell'ambito del corso di **Elettronica Digitale**.

> 💡 **Nota:** tutti i progetti presenti in questa repository sono stati realizzati come **attività opzionali**, con l'obiettivo di approfondire gli argomenti trattati durante il corso e acquisire maggiore esperienza nella progettazione di sistemi digitali.

---

## 📚 Indice

* [Progetto 1 - Sommatore a 16 bit](#-progetto-1---sommatore-a-16-bit)
* [Progetto 2 - Mini-ALU](#-progetto-2---mini-alu)
* [Progetto 3 - Sommatore a 6 operandi](#-progetto-3---sommatore-a-6-operandi)
* [Strumenti Utilizzati](#-strumenti-utilizzati)

---

## 🔢 Progetto 1 - Sommatore a 16 bit

Implementazione di un **sommatore a 16 bit** basato su una struttura gerarchica.

### Caratteristiche

* ✔️ Operandi a 16 bit
* ✔️ Quattro moduli **Carry Look-Ahead (CLA)** a 4 bit
* ✔️ Collegamento dei moduli secondo una struttura **Ripple Carry**
* ✔️ Studio della propagazione del riporto e delle prestazioni dell'architettura

### Architettura

```text
CLA 4 bit → CLA 4 bit → CLA 4 bit → CLA 4 bit
```

---

## ➕➖ Progetto 2 - Mini-ALU

Implementazione di una **Mini-ALU (Arithmetic Logic Unit)** in grado di eseguire operazioni di **somma** e **sottrazione**.

Per questo progetto sono state sviluppate **due versioni distinte**:

* ✔️ Mini-ALU a **8 bit**
* ✔️ Mini-ALU a **16 bit**

### Caratteristiche

* ✔️ Operazioni aritmetiche di somma e sottrazione
* ✔️ Selezione dell'operazione tramite un segnale di controllo a 1 bit
* ✔️ Utilizzo dell'aritmetica in complemento a 2 per la sottrazione
* ✔️ Implementazione modulare per differenti ampiezze degli operandi

### Segnale di comando

| Comando | Operazione  |
| ------- | ----------- |
| `0`     | Somma       |
| `1`     | Sottrazione |


---

## 🌳 Progetto 3 - Sommatore a 6 operandi

Implementazione di un circuito in grado di sommare **sei operandi da 8 bit in complemento a 2**.

### Caratteristiche

* ✔️ Operandi signed a 8 bit
* ✔️ Struttura ad albero di sommatori
* ✔️ Pipeline 
* ✔️ Riduzione della profondità logica rispetto ad una somma sequenziale

### Obiettivo

Analizzare i vantaggi delle architetture **pipeline** e delle strutture ad **albero di riduzione** per applicazioni ad alte prestazioni.

---

## 🛠️ Strumenti Utilizzati

| Tecnologia        | Descrizione                                 |
| ----------------- | ------------------------------------------- |
| **VHDL**          | Linguaggio di descrizione hardware          |
| **Xilinx Vivado** | Ambiente di sviluppo e simulazione          |
| **FPGA**          | Piattaforma di implementazione dei progetti |

---

## 📖 Contesto Accademico

Questi progetti sono stati sviluppati come approfondimento pratico del corso di **Elettronica Digitale**, con l'obiettivo di applicare concetti relativi a:

* Architetture combinatorie
* Sistemi aritmetici digitali
* Carry Look-Ahead Adders (CLA)
* Complemento a 2
* Pipeline
* Ottimizzazione delle prestazioni hardware
* Altri

