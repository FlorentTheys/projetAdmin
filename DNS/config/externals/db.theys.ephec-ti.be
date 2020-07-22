$ORIGIN theys.ephec-ti.be.
$TTL    604800
@       IN      SOA     ns1.theys.ephec-ti.be. admin.theys.ephec-ti.be. (
                     2006020201 ; Serial
                         604800 ; Refresh
                          86400 ; Retry
                        2419200 ; Expire
                         604800); Negative Cache TTL
; SOA - NS
@               IN      NS      ns.wt1-6.ephec-ti.be.
@               IN      MX      10 mail

; SOA - A
ns              IN      A       51.178.40.200

; web
serveurWeb      IN      A       51.178.40.200
www             IN      CNAME   serveurWeb
b2b             IN      CNAME   serveurWeb

; voip
sip             IN      A       51.178.40.200