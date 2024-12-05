sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'sap/fe/demo/studentgames/test/integration/FirstJourney',
		'sap/fe/demo/studentgames/test/integration/pages/StudentList',
		'sap/fe/demo/studentgames/test/integration/pages/StudentObjectPage'
    ],
    function(JourneyRunner, opaJourney, StudentList, StudentObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('sap/fe/demo/studentgames') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheStudentList: StudentList,
					onTheStudentObjectPage: StudentObjectPage
                }
            },
            opaJourney.run
        );
    }
);