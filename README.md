# Batch-Script
## A collection of batch scripts written by me

1) [MineSwitcher](MineSwitcher.bat) - was intended to target large mining rigs/farms that are capable of reaching payouts rather quickly. Instead of only mining the current highest bidder, you can secure your future by mining as many coins as possible. This was built out of necessity and after finding no others like it online, I decided to make it public.
- **Features:** switch between an unlimited amount of coins and mining softwares at your desired intervals.
- **Instructions:** the way that it is currently written, you need to modify your start.bat file by adding a start command and changing the directory to your miner. 
- ***Example***: <br/> `start /b %cd%/gminer_2_74_windows64/miner.exe --algo kawpow --server 2miners.com:6060 --user wallet.worker`

- ***or simply `cd %~dp0 start /b`***

- ***Example***: <br/> `@cd "%~dp0"`<br/>
`start /b nbminer -a etchash -o stratum+tcp://ethermine.org:4444 -u wallet.worker`


## Donation Addresses:
BTC: `39jKNoXoxtsdiUCFjU2ULV9AH2vHHMxK5P`\
ETH: `0xa660e3ae6ea3e767dc8cedb38c6eaacdca9c1b3c`\
Nano: `nano_1mrgkm6prabc5f3j341j6cxefxbt5hibdy9nio1ezgzs5uqouoqzjpojrss9`\
RVN: `RGgnUmXxke3bP1CLoDMjEycfjga1B6Bogi`\
ZIL: `zil1kee00mphd2j8lg8gtxw5q4ua2ue3uarzgyurrj`\
ETC: `0x30ea790365e973d3B3b5de71A8AA808ead1257Fd`
