# com.google.Chrome.pki.eToken

This extension provides support for the Safenet eToken
cryptographic token in Google Chrome. It includes the necessary
libraries for communication with the token and its dependencies.

To use this extension, ensure that the Google Chrome Flatpak is
installed and that you have a compatible token. The tokens will be
loaded by the p11-kit-proxy.so library. In case of issues, verify
that the pcscd service is running on the host system (recommended version 2.3.0).


## Instalation (testing branch)
Install the pre-requisites and the compatible testing branch of com.google.Chrome (https://github.com/flathub/com.google.Chrome/pull/378):

``` bash
flatpak install --user -y org.flatpak.Builder
flatpak install --user https://dl.flathub.org/build-repo/168688/com.google.Chrome.flatpakref
```
Clone the repository:
``` bash
git clone https://github.com/MarceloAlm/com.google.Chrome.libeToken.git
cd com.google.Chrome.libeToken/
```

Build:
``` bash
flatpak run org.flatpak.Builder --user \
	--force-clean --sandbox --install-deps-from=flathub --ccache \
	--repo=.local-repo _build \
	com.google.Chrome.pki.eToken.yaml
```

``` bash
flatpak remote-add --user --no-gpg-verify local-repo file://$(pwd)/.local-repo
```

``` bash
flatpak install --user -y local-repo com.google.Chrome.pki.eToken
```

sha256sums
----------
```
13576c7c1ddb0fc2d63636fc736689e95c49fc3fa6ab087d5cde4edd0483767b lib/libeToken.so.10.8.1050
0583c3e5478a5251803af16f0bbd7d2a4e48d20188deb9dc6178456ec8d20316 GlobalSign-SAC-Ubuntu-2204.zip
7e5fd50d913fce9c9daeeff54201ee341b93da768576a09020cddbdba3f040bc Linux_SAC_10_8_R1_GA.zip
```

## References
### https://knowledge.digicert.com/general-information/how-to-download-safenet-authentication-client
https://www.digicert.com/StaticFiles/Linux_SAC_10_8_R1_GA.zip

### https://support.globalsign.com/code-signing/safenet-drivers
https://www.globalsign.com/en/safenet-drivers/USB/10.8/GlobalSign-SAC-Ubuntu-2204.zip

## Licensing
From SAC 10.8 release onwards, no license is required for SAC on Linux.

# Copyright
```
THALES SOFTWARE LICENSE TERMS
SafeNet Authentication Client
Legal notice:
Thales software is not sold; rather, copies of Thales software are licensed all the way through the distribution channel to the end user. 
UNLESS YOU HAVE ANOTHER AGREEMENT DIRECTLY WITH THALES THAT CONTROLS AND ALTERS YOUR USE OR DISTRIBUTION OF THE THALES SOFTWARE, 
THE TERMS AND CONDITIONS OF THE APPLICABLE LICENSE AGREEMENTS BELOW APPLY TO YOU. 
Please read the agreements applicable for the products you want to use.  
Please be careful to read the agreement for the software you want to use. 

LICENSE AGREEMENT
IMPORTANT INFORMATION - PLEASE READ THIS AGREEMENT CAREFULLY BEFORE OPENING THE PACKAGE AND/OR USING THE CONTENTS THEREOF AND/OR 
BEFORE DOWNLOADING OR INSTALLING THE SOFTWARE PROGRAM. ALL ORDERS FOR AND USE OF SOFTWARE SUPPLIED BY Thales DIS CPL USA, Inc. 
(or any of its affiliates - either of them referred to as &quot;THALES&quot;) ARE AND SHALL BE, SUBJECT TO THE TERMS AND CONDITIONS SET FORTH IN THIS AGREEMENT. 
BY OPENING THE PACKAGE CONTAINING THE PRODUCTS AND/OR BY DOWNLOADING THE SOFTWARE (as defined hereunder) AND/OR BY INSTALLING THE SOFTWARE 
ON YOUR COMPUTER AND/OR BY USING THE PRODUCT, YOU ARE ACCEPTING THIS AGREEMENT AND AGREEING TO BE BOUND BY ITS TERMS AND CONDITIONS.

1.  Ownership.  
The object code version of the software component of SafeNet Authentication Client, including any revisions, corrections, modifications, enhancements, 
updates and/or upgrades thereto about to be installed by you (hereinafter in whole or any part thereof defined as: &quot;Software&quot;), and the related the materials 
and documents pertaining to the Software which may include, without limitation, user guides, manuals, and any other written material provided by Thales 
(the &quot;Documentation''), ARE NOT FOR SALE and are and shall remain Thales's sole property.  All intellectual property rights (including, without limitation, 
copyrights, trade secrets, trademarks, etc.) evidenced by or embodied in and/or attached/connected/related to the Software, in the form of object code only, 
and the Documentation (collectively the ''Licensed Product''), are and shall be owned solely by Thales. 
This License Agreement does not convey to you an interest in or to the Licensed Product, but only a limited right of use revocable in accordance with the terms 
of this License Agreement. Nothing in this License Agreement constitutes a waiver of Thales's intellectual property rights under any law, and all rights not 
granted to you herein are expressly reserved by Thales.  The Licensed Product is protected by law, including but not limited to the copyright laws of 
the United States and other countries, and by international treaty provisions. 

2.  Non Exclusive License.

Subject to payment of applicable fees, Thales hereby grants to you, and you accept, a personal, nonexclusive and fully revocable limited license (the &quot;License&quot;) 
to use the Software, in executable form only, as described in the Documentation and only according to the terms of this License Agreement to:  (i) install 
the Software and use it on computers as described in Thales's related Documentation; and (ii) merge and link the Software into your computer programs for 
the sole purpose described in the Documentation provided by Thales (the &quot;Designated Uses&quot;).  Licensee shall use the Licensed Products only for the Designated 
Uses permitted by this License, as specified above, and only during the term of this License Agreement. Licensee shall not use the Licensed Products for any 
other purpose of any kind or nature whatsoever.

3. Use Limitations.  
The Licensed Product must be used and maintained in strict compliance with the instruction and safety precautions of Thales contained herein, in all 
supplements thereto, and in any other written documents of Thales. Except as specifically permitted in Section 2 above, you agree not to: (i) use, 
copy, modify, merge, sub-license, or transfer the Software or any other of Thales's products, in whole or in part, except as expressly authorized 
in this License Agreement and in the Documentation, (ii) sell, license (or sub-license), lease, assign, transfer, pledge, or share your rights under 
this License with/to anyone else, (iii) modify, disassemble, decompile, reverse engineer, revise or enhance the Software or attempt to discover 
the Software's source code, (iv) place the Licensed Product, or any portion thereof, onto a server so that it is accessible via a public network, 
and (v) use any back-up or archival copies of the Licensed Product (or allow someone else to use such copies) for any purpose other that to replace 
an original copy if it is destroyed or becomes defective. If you are a member of the European Union, this License Agreement does not affect your 
rights under any legislation implementing the EC Council Directive on the Legal Protection of Computer Programs. 
You agree to reasonably communicate the terms and conditions of this License Agreement to those persons employed by you who come into contact with 
the Licensed Product, and to use reasonable best efforts to ensure their compliance with such terms and conditions, including, without limitation, 
not knowingly permitting such persons to use any portion of the Licensed Product for the purpose of deriving the source code of the Software. 

4. Limited Warranty. 

Thales warrants, for your benefit alone, that the Licensed Product, when and as delivered to you, and for a period of ninety (90) days after the date 
of delivery to you, will perform in substantial compliance with the Documentation, provided that it is used on the computer hardware and with the 
operating system for which it was designed.  Non-substantial variation of performance from the Documentation does not establish a warranty right.  

5. Warranty Disclaimer. 

THALES DOES NOT WARRANT THAT ANY OF ITS PRODUCT(S) WILL MEET YOUR REQUIREMENTS OR THAT ITS OPERATION WILL BE UNINTERRUPTED OR ERROR-FREE. 
TO THE EXTENT ALLOWED BY LAW, THALES EXPRESSLY DISCLAIMS ALL EXPRESS WARRANTIES NOT STATED HEREIN AND ALL IMPLIED WARRANTIES, INCLUDING, 
BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE. NO THALES DEALER, DISTRIBUTOR, CHANNEL PARTNER, 
RESELLER, AGENT OR EMPLOYEE IS AUTHORIZED TO MAKE ANY MODIFICATIONS, EXTENSIONS, OR ADDITIONS TO THIS WARRANTY. 
If any modifications are made to the Licensed Product by you during the warranty period; the Licensed Product has not been properly installed, 
operated, repaired or maintained in accordance with the instructions supplied by Thales; the Licensed Product has been subjected to abnormal 
physical or electrical stress, negligence or accident; or if you violate any of the terms of this License Agreement, then the warranty in 
Section 4 above, shall immediately be terminated. The warranty shall not apply if the Licensed Product is used on or in conjunction with hardware or  
programs other than the unmodified version of hardware and programs with which the Licensed Product was designed to be used as described in the Documentation.

6.  Limitation of Remedies. 

In the event of a breach of this warranty, Thales's sole obligation shall be, at Thales's sole discretion: (i) to replace or repair the Licensed Product, 
or component thereof, that does not meet the foregoing limited warranty, free of charge, or (ii) to refund the price paid by you for the Licensed Product,
 or component thereof. Any replacement or repaired component will be warranted for the remainder of the original warranty period or 30 days, whichever is longer.
 Warranty claims must be made in writing during the warranty period and within seven (7) days of the observation of the defect accompanied by evidence 
satisfactory to Thales. All Licensed Products should be returned to the Reseller, Distributor or Channel Partner from which they were purchased 
(if not purchased directly from Thales) and shall be shipped by the returning party with freight and insurance paid. The Licensed Product 
or component thereof must be returned with a copy of your receipt.

7.  Maintenance and Support. 

Thales has no obligation to provide support, maintenance, upgrades, modifications, or new releases under this License Agreement.

8. Limitation of Liability. 
IN NO EVENT WILL THALES BE LIABLE TO YOU OR ANY THIRD PARTY FOR ANY INCIDENTAL OR CONSEQUENTIAL DAMAGES (INCLUDING, WITHOUT LIMITATION, 
INDIRECT, SPECIAL, PUNITIVE, OR EXEMPLARY DAMAGES FOR LOSS OF BUSINESS, LOSS OF PROFITS, BUSINESS INTERRUPTION, OR LOSS OF BUSINESS 
INFORMATION) ARISING OUT OF THE USE OF OR INABILITY TO USE THE PROGRAM, OR FOR ANY CLAIM BY ANY OTHER PARTY, EVEN IF THALES HAS BEEN ADVISED 
OF THE POSSIBILITY OF SUCH DAMAGES. THALES'S AGGREGATE LIABILITY WITH RESPECT TO ITS OBLIGATIONS UNDER THIS LICENSE AGREEMENT OR OTHERWISE 
WITH RESPECT TO THE LICENSED PRODUCT AND DOCUMENTATION OR OTHERWISE SHALL BE EQUAL TO THE PURCHASE PRICE, BUT SHALL IN NO EVENT EXCEED $1,000. 
THIS LIMITATION WILL APPLY EVEN IN THE EVENT OF A FUNDAMENTAL OR MATERIAL BREACH OF THIS LICENSE AGREEMENT.  BECAUSE SOME STATES/COUNTRIES 
DO NOT ALLOW THE EXCLUSION OR LIMITATION OF LIABILITY FOR CONSEQUENTIAL OR INCIDENTAL DAMAGES, THE ABOVE LIMITATION MAY NOT APPLY TO YOU.


9. Export Restrictions. 
a) Licensee shall be solely responsible for and shall comply with all applicable laws, ordinances, rules and regulations imposed by any country 
or subdivision thereof applicable in connection with Licensees performance under this License agreement, including but not limited to laws and 
regulations applicable to: (i) the import and export of the Products; (ii) the U.S. Foreign Corrupt Practices Act, the UK Bribery Act or any 
other laws or regulations regarding corruption or bribery; (iii) the use of deceptive or misleading practices; or (iv) the privacy of users of 
personally identifiable information and the collection, storage, transfer and any other processing of any personally identifiable information 
collected or used by Licensee in any manner or maintained by third parties having authorized access to such information. 
b. Licensee shall obtain any and all permits, licenses, authorizations and/or certificates that may be required in any jurisdiction or by any 
regulatory or administrative agency in connection with the conduct of its business and the distribution or sale of the Products. 
c. In addition to any other indemnity under this license agreement, Licensee shall indemnify and hold Thales harmless from and against any and 
all claims, damages and liabilities asserted by any person or entity against Thales in connection with any acts or omissions of Licensees or 
third parties acting on Licensees behalf which constitute a breach of this Section 9. Licensees indemnification under this Section 9 shall 
include the payment of all reasonable attorneys fees and other costs incurred by Thales or its Affiliates. This provision shall survive any 
termination or expiration of this License agreement.

10. Audit Rights. 
THALES SHALL HAVE THE RIGHT, AT ITS OWN EXPENSE, UPON REASONABLE PRIOR NOTICE, TO PERIODICALLY INSPECT AND AUDIT YOUR RECORDS TO ENSURE YOUR 
COMPLIANCE WITH THE TERMS AND CONDITIONS OF THIS LICENSE AGREEMENT. 

11. Termination. 
This License Agreement is effective until it is terminated. Thales may terminate this License Agreement if Thales finds that you have violated 
any of the terms of this License Agreement. All provisions relating to confidentiality, proprietary rights, and non-disclosure shall survive 
the termination of this License Agreement. 

12. Special Procedure for U.S. Government Sales. 
The Licensed Product: (i) was developed exclusively at private expense, (ii) is a trade secret of Thales for all purposes of the Freedom of 
Information Act or its successor or any other disclosure statute, regulation or provision, (iii) is &quot;commercial computer software&quot; subject to 
limited utilization (Restricted Rights), and (iv) including all copies of the Licensed Product, in all respects is and shall remain proprietary 
to Thales or its licensors. Use, duplication or disclosure by the U.S. Government or any person or entity acting on its behalf is subject to 
Restricted Rights and all applicable restrictions for software developed exclusively at private expense as set forth in:  (i) for the DoD, 
the Rights in Technical Data and Computer Software clause at DFARS 252.227-7013 or any successor clause, and (ii) for all government agencies, 
the Commercial Computer Software - Restricted Rights clause at FAR 52.227-19 or any successor clause.  The U.S. Government must refrain from 
changing or removing any insignia or lettering from the Licensed Product or from producing copies of the Licensed Product and manuals (except 
one copy of the Licensed Product for backup purposes).  All other U.S. Government personnel using the Licensed Product are hereby on notice 
that use of the Licensed Products are subject to restrictions, which are the same as, or similar to, those specified above. The manufacturer/supplier 
is Thales DIS CPL USA, Inc. - Corporate Headquarters, 4690 Millennium Drive, Belcamp, Maryland 21017, U. S. A.

13.  Open Source Software Components and Third Party Software.

 The Licensed Product is distributed with open source software components (&quot;Open Source Software Components&quot;) and other Third Party Software (Third Party Software), 
which are ONLY subject to the license agreements referenced herein (which also contain limited warranties and liabilities).  ONLY THOSE TERMS AND CONDITIONS SPECIFIED 
FOR EACH SPECIFIC OPEN SOURCE SOFTWARE COMPONENT OR THIRD PARTY SOFTWARE SHALL BE APPLICABLE TO SUCH COMPONENT.  Each Open Source Software Component or 
Third Party Software is the copyright of its respective copyright owner as indicated in the applicable license, installation, readme and/or help files for such 
Open Source Software Components or Third Party Software.  Thales makes no representations or warranties with regard to the Open Source Software Components or Third Party Software.

14. Governing Law and dispute resolution
This Agreement shall be governed by and construed in accordance with the table below without regard to the application of conflicts of laws principles, 
and each party irrevocable submits to the specified jurisdiction.

	Austria, Germany, Switzerland
	Thales Contracting Entity:	THALES DIS CPL DEUTSCHLAND GMBH
	Governing Law: 	German Law
	Forum for Disputes: 	Munich Tribunal
	United Kingdom
	Thales Contracting Entity:	THALES DIS CPL UK LIMITED
	Governing Law: 	English Law
	Forum for Disputes: 	Courts of London
	Rest of the EMEA countries
	Thales Contracting Entity:	THALES DIS TECHNOLOGIES BV
	Governing Law: 	English Law
	Forum for Disputes: 	Courts of London
	Israel
	Thales Contracting Entity:	THALES DIS ISREAL LTD
	Governing Law: 	Laws of England &amp; Wales
	Forum for Disputes: 	Courts of London
	Australia &amp; New Zealand
	Thales Contracting Entity:	THALES DIS CPL AUSTRALIA PTY LTD
	Governing Law: 	Laws of New South Wales
	Forum for Disputes: 	Courts in Sydney, Australia
	Japan
	Thales Contracting Entity:	THALES DIS JAPAN KK
	Governing Law: 	Laws of Japan
	Forum for Disputes: 	Courts in Tokyo, Japan
	India
	Thales Contracting Entity:	SAFENET INDIA PRIVATE LIMITED
	Governing Law: 	Laws of India
	Forum for Disputes: 	Courts in New Delhi, India
	United States of America and the Caribbean
	Thales Contracting Entity:	Thales DIS CPL USA, Inc.
	Governing Law: 	Laws of Texas (USA)
	Forum for Disputes: 	Courts of Travis County, TX
	Brazil
	Thales Contracting Entity:	THALES DIS BRASIL CARTÕES E SOLUÇÕES TECNOLOGICAS LTDA
	Governing Law: 	Laws of Brazil
	Forum for Disputes: 	Courts in São Paulo, Brazil
	Canada
	Thales Contracting Entity:	THALES DIS CPL CANADA, INC.
	Governing Law: 	Laws of the Province of Ontario
	Forum for Disputes: 	Courts of the Province of Ontario
	Mexico &amp; Rest of the LATAM countries (except as noted)
	Thales Contracting Entity:	THALES DIS MEXICO SA DE CV
	Governing Law: 	Laws of Mexico
	Forum for Disputes: 	Courts in Mexico City
	Hong Kong, China and the rest of Asia (except as noted)
	Thales Contracting Entity:	THALES DIS CPL HONG KONG LIMITED
	Governing Law: 	Laws of Hong Kong
	Forum for Disputes: 	Courts in Hong Kong


This License Agreement shall be construed, interpreted and governed by the laws of the State of Delaware without regard to conflicts of laws and provisions thereof. 
The exclusive forum for any disputes arising out of or relating to this License Agreement shall be an appropriate federal or state court sitting in the State of Maryland, USA.
 The application of the United Nations Convention of Contracts for the International Sale of Goods is expressly excluded.  This License Agreement shall constitute the entire 
Agreement between the parties hereto. This License Agreement, the rights granted hereunder, and the Licensed Product shall not be assigned by you without the prior written 
consent of Thales. Any waiver or modification of this License Agreement shall only be effective if it is in writing and signed by both parties hereto. If any part of 
this License Agreement is found invalid or unenforceable by a court of competent jurisdiction, the remainder of this License Agreement shall be interpreted so as to 
reasonably effect the intention of the parties. 

© 2022, Thales. All rights reserved. 


ADDENDUM FOR THIRD PARTY SOFTWARE APPLICATIONS: 

The Software contains certain Third Party Software, including Open Source Software Components, as listed below.  Any use of the Open Source Software Components is subject 
to the applicable license agreements, referenced below.  If you choose to distribute or otherwise use the Open Source Software Components independent of the Software, 
you may only do so in accordance with the applicable licenses below, and any and all proprietary notices of Thales, Inc., must be removed from any resulting product.  
In no event shall you state or imply that a derivative product you created with the Open Source Software Components is produced by Thales or otherwise endorsed or supported by Thales.  
The hyperlinks to the following Third Party Software licenses are valid as of the version date of this License Agreement.



Exhibit A: 
ZLib License

I.	Copyright (C) 1995-2005 Jean-loup Gailly and Mark Adler
II.	This software is provided 'as-is', without any express or implied warranty.  In no event will the authors be held liable for any damages arising from the use of this software.
III.	Permission is granted to anyone to use this software for any purpose, including commercial applications, and to alter it and redistribute it freely, subject to the following restrictions:
IV.	The origin of this software must not be misrepresented; you must not claim that you wrote the original software. If you use this software in a product, an acknowledgment in 
the product documentation would be appreciated but is not required.
V.	Altered source versions must be plainly marked as such, and must not be misrepresented as being the original software.
VI.	This notice may not be removed or altered from any source distribution.
a.	Jean-loup Gailly jloup@gzip.org &lt;mailto:jloup@gzip.org&gt; 
b.	Mark Adler madler@alumni.caltech.edu &lt;mailto:madler@alumni.caltech.edu&gt;

OpenSC component is distributed under the Lgpl v2.1  License which can be read on the free software foundation website:
https://www.gnu.org/licenses/old-licenses/lgpl-2.1.fr.html 

GNU Lesser General Public License

The Open Source Software Component (OpenSC), whose PKCS#15 functionality is utilized within SafeNet's PKCS#11 and SafeNet SIS MD products, is used and distributed under the GNU Lesser General Public License 2.1 i.e. LGPL-2.1, which can be read on the open source foundation website:
https://opensource.org/licenses/LGPL-2.1
```
