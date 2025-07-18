# Alle verfügbaren PSTN Ports angezeigt : Type: TE (Terminal Equipment) / NT (Network Terminal) : Protocol: (PTP Point to Point / PTMP Point to Multipoint)
# Port 4 soll nun ein ISDN Gerät angeschlossen werden
;Type = NT
;Protocol = PTP
;Termination = 1
;Port = 1
;Type = TE
;Protocol = PTP
;Sync = 1
;ChanSel = STANDARD
;Tones = CH
;OverlapDial = 3
;DAD = 15
;EC = 1
;Dnumplan = UNK
;Rnumplan = UNK
;Onumplan = UNK
;Bearer = SPEECH

;Port = 2
;Type = NT
;Protocol = PTP
;Sync = 1

;Port = 3
;Type = PTMP
;Protocol = PTP
;Sync = 1
