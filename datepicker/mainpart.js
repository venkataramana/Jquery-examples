$(function(){
				if($(window.parent.document).find('iframe').size()){
					var inframe = true;
				}
				 $('input').daterangepicker({
					posX: null,
				 	posY: null,
				 	arrows: true,
				 	dateFormat: 'M d, yy',
				 	rangeSplitter: 'to',
				 	datepickerOptions: {
				 		changeMonth: true,
				 		changeYear: true
				 	},
				 	onOpen:function(){ if(inframe){ $(window.parent.document).find('iframe:eq(1)').width(700).height('35em');} },
				  	onClose: function(){ if(inframe){ $(window.parent.document).find('iframe:eq(1)').width('100%').height('5em');} }
				 });
				  $('.showdatepicker-enddate').datepicker({
                              //beforeShow: EndDateRange,
                              changeMonth: true,
                              numberOfMonths: 3,
                              changeYear: true,
                              onSelect: renderCalendarCallback,
                              hideIfNoPrevNext: true
                        });
                        function renderCalendarCallback(date) {
                               var sdate=$('.showdatepicker-startdate').datepicker("getDate");
                                var ndate=$('.showdatepicker-enddate').datepicker("getDate");
                                var difference = ndate - sdate;
                                var daysDifference = Math.ceil(difference/1000/60/60/24);
                                //alert(daysDifference)
                                if(actives == null)
                                {
                                        actives.push(sdate);
                                        //alert("no dates")
                                }
                                else
                                {
                                       for(var i=0; i< daysDifference+1; i++)
                                        {
                                                var xx = new Date(parseFloat(sdate.getTime() + i * 24 * 60 * 60 * 1000));
                                                var yy= (xx.getMonth() + 1) + '/' + xx.getDate() + '/' +  xx.getFullYear();
                                                actives.push(yy);
                                        }
                                }
                                var datestring =   date;    //new Date(parseFloat(date.getTime())); //date.getDate() +  '/' +  (date.getMonth() + 1) + '/' +  date.getFullYear();
                                //var myDate = new Date(datestring);
                                //alert(datestring + ", and ," + actives);
                                if (parseInt(actives.toString().search(datestring)) >= 0) {
                                        alert(actives.toString() + " and "+ datestring );
                                        return [false, 'active-color', 'test']; //For Booked Date
                                }
                                return [false, '', 'this is span'];
                                actives=[];
                        }

 });

