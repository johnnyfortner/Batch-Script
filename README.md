# Batch-Script
## A collection of batch scripts written by me

[MineSwitcher](MineSwitcher.bat) - MineSwitcher was intended to target large mining rigs/farms that are capable of reaching payouts rather quickly. Instead of only mining the current highest bidder, you can secure your future by mining as many coins as possible. This was built out of necessity and after finding no others like it online I decided to make it public. 

**Instructions** the way that it is currently written, you also need to modify your start.bat file by adding `start /b %cd%/Miner_Folder/` to the very begining of the file.

Example: `start /b %cd%/gminer_2_74_windows64/miner.exe --algo kawpow --server us-rvn.2miners.com:6060 --user wallet.worker`
