<?php
/*
Template Name: API Page 
*/
header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");

$arr=array();
$arr["committees"]=array();

$product_item=array(array(
    "id" => "DISEC",
    "name" => "United Nations Disarmament and International Security Committee",
    "description" => html_entity_decode("The first committee in the United Nations, the Disarmament and International Security committee (DISEC), was established in 1946 and resides under the direct control of the General Assembly of the United Nations. The primary functions of the council are prevention of imminent conflicts, mediation and resolution for the persistent maintenance of international peace and security among nations.This committee is based on the “One Member, One Vote Principle”, and includes representatives from all the 193 member nations of the UN."),
    "level" => "Beginner",
    "strength" => 160,
    "agenda" => array("General Debate on Current scenario of Disarmament and International Security in regard to the threats faced in 21st Century.","Thematic Discussion on Arms Control.")
),array(
    "id" => "SPECPOL",
    "name" => "United Nations Special Political and Decolonization Committee",
    "description" => html_entity_decode("The Fourth Committee of the United Nations General Assembly (also known as the Special Political and Decolonization Committee or SPECPOL) was established in 1993, and derives its mandate from Article XI of the United Charter, which commits to the preservation of the rights and dignities of those living in non-self-governing territories. The Special Political and Decolonization Committee is a recommendatory body to the United Nations Security Council which considers a broad range of issues covering a cluster of five decolonization-related agenda items; the effects of atomic radiation, questions related to information, a comprehensive review of the questions of peacekeeping operations, as well as a review of special political missions and international cooperation for the peaceful uses of outer space."),
    "level" => "Beginner",
    "strength" => 130,
    "agenda" => array("Reviewing the management and operability of UNRWA.")
),array(
    "id" => "SOCHUM",
    "name" => "United Nations Social, Humanitarian and Cultural Committee ",
    "description" => html_entity_decode("The Social, Humanitarian and Cultural Committee (SOCHUM) is the third committee of the General Assembly of the United Nations, entrusted with a broad mandate surrounding social, humanitarian and human rights issues from around the world. To delineate a general idea of the committee that was established after the development of Universal Declaration of Human Rights in 1948, some of the issues discussed within SOCHUM include human rights, global literacy, women’s rights, children’s rights, the treatment of refugees and displaced persons, international drug control, crime prevention, and the elimination of racism and discrimination. SOCHUM also works closely with many other UN bodies in order to effectually address its mandated issues."),
    "level" => "Beginner",
    "strength" => 160,
    "agenda" => array("Prison reforms with special emphasis on treatment of convicts and rights of under trials.")
)
,array(
    "id" => "ESS",
        "name" => "United Nations General Assembly Emergency Special Session ",
        "description" => html_entity_decode("An Emergency Special Session is an unscheduled meeting which is called to make urgent recommendations on a particular issue. Under the UN General Assembly Uniting for Peace Resolution (A/RES/377 A) adopted in 1950, an emergency special session can be convened within 24 hours after being requested by a majority of the UN Member States or by a majority procedural vote of the Security Council. There have only been ten emergency special sessions in the history of the United Nations, making their occurrence very rare. An emergency special session is typically called when there is a lack of unanimity among the permanent members of the Security Council. An emergency special session can make recommendations on the regulation of peacekeeping missions, authorization of military advancements and arbitration on sanctions of other relevant UN actions."),
        "level" => "Beginner",
        "strength" => 100,
        "agenda" => array("Escalation of Conflict in Moroccan occupied territories of Western Sahara.")
)
,array(
    "id" => "WHA",
        "name" => "The World Health Assembly",
        "description" => html_entity_decode("The World Health Assembly is the governing body of World Health Organisation, the technical health agency of the United Nations. The Health Assembly is attended by delegations from all 194 WHO Member States and focuses on a specific health agenda prepared by its Executive Board. The World Health Assembly takes place annually on the month of May at the United Nations in Geneva, Switzerland. During this one week meeting, member states determine the policies of the Organization, appoint the Director-General, discuss upon resolutions, analyse action plans, supervise finances, review and approve the proposed budgets and further deliberate on key public health issues."),
        "level" => "Beginner",
        "strength" => 160,
        "agenda" => array("Global Strategies on Innovation and Intellectual Property in the Pharmaceutical Industry."," Addressing Global Mental Health in the Context of the Sustainable Development Goals.")
)
,array(
    "id" => "OPCW",
        "name" => "Organisation For The Prohibition of Chemical Weapons ",
        "description" => html_entity_decode("The OPCW is the implementing body of the Chemical Weapons Convention(CWC) which entered into force on 29th April, 1997. It has 192 member states and is located in Hague, Netherlands. The basic mandate of this organization is to fulfill the objectives and purposes of the CWC; it is directed towards guaranteeing the implementation of its provisions and providing a formal forum for discussion and cooperation among the state parties.
    
        The underlying aim of the OPCW is to achieve a world free of chemical weapons by implementing the provisions of the CWC through on-site inspections and declarations by the member states. All state parties contribute to the OPCW budget in adherence to a modified UN Scale of Assessments. The organization was awarded the 2013 Nobel Prize for “its extensive efforts to eliminate chemical weapons."),
        "level" => "Intermediate",
        "strength" => 80,
        "agenda" => array("Upholding the global ban against chemical weapons use.")
)
,array(
    "id" => "NATO",
        "name" => "North Atlantic Treaty Organisation",
    "description" => html_entity_decode("The North Atlantic Alliance, popularly known as the North Atlantic Treaty Organisation (NATO), is an intergovernmental military alliance consisting of 29 states from North America and Europe. This organisation for regional cooperation, which was established on 4th of April,1949, plays a major role in dealing with military conflicts, with the combined military spending of all NATO members constituting over 70% of the global total.
    
    It is committed to the peaceful resolution of disputes. If diplomatic efforts fail, it has the military capacity needed to undertake crisis-management operations. These are carried out under Article 5 of the Washington Treaty – NATO’s founding treaty – or under a UN mandate, alone or in cooperation with other countries and international organizations."),
        "level" => "Advanced",
        "strength" => 35,
        "agenda" => array("Reviewing and enhancing NATO Partnerships in the Black Sea and Eastern Europe.")
),

array(
"id" => "ECOSOC",
    "name" => "The Economic and Social Council",
    "description" => html_entity_decode("The Economic and social Council (ECOSOC) deals with economic, social, cultural and health related global issues, and monitors safeguarding of basic human rights and fundamental freedoms. It also coordinates the work of UN and the numerous specialized agencies working under it. Chapter X of the United Nations Charter highlights the mandate of ECOSOC. With 54 members nations on board, 18 of which are elected every year by the General Assembly for a three-year term, ECOSOC serves as the central forum for discussing international economics and socio-political issues by formulating policy recommendations, addressed either to member states or the UN as whole. Besides member states, a number of non-governmental organisations have also been granted a consultative status to the Council."),
    "level" => "Intermediate",
    "strength" => 100,
    "agenda" => array("Transformation towards sustainable and resilient societies-The contribution of functional commissions.","High-level policy dialogue including international financial and trade institutions on sustainable development and development growth.")
),
array(
    "id" => "UNCND",
        "name" => "United nations Commission On Narcotic Drugs",
    "description" => html_entity_decode("The Commission on Narcotic Drugs is one of the functional commissions of ECOSOC. It has been the central drug policy-making body in the UN since 1946 and currently holds the most important functions under the international drug control treaties. The powers of CND are specified by the drug control treaties which divide power between the commission and International Narcotics Control Board. The CND holds annual meetings where it considers and adopts a range of new decisions and resolutions. Intersessional meetings of CND are convened to provide policy guidance to UNODC. Towards the end of each year, CND meets in a reconvened session to discuss budgetary and administrative matters."),
        "level" => "Intermediate",
        "strength" => 100,
        "agenda" => array("Pre-emptive measures and actions to tackle overseas opioid trafficking with emphasis on the threats posed by its consumption.")
    ),
array(
     "id" => "ILC",
            "name" => "The International Law Commission",
            "description" => html_entity_decode("The International Law Commission was established by the United Nations General Assembly in 1948 for global promotion, development and proper codification of international law. The ILC was created in order to ensure maintenance of international peace and security by ensuring that all nations abide by and correctly interpret international law for its proper implementation, directed towards conflictprevention and resolution. The Commission has 34 members with all professional experts in the field of international law, elected by the General Assembly from a list of members nominated by the governments of the member states. The primary work of the ILC is flawlessly regulated and governed by its statute, initially approved by the General Assembly of the UN."),
            "level" => "Advanced",
            "strength" => 40,
            "agenda" => array("Protection of personal data in transborder flow of information.","Scope and Application of the Principle of extraterritorial jurisdiction.")
    ),
array(
        "id" => "OHCHR",
            "name" => "The Office of the United Nations High Commissioner for Human Rights",
            "description" => html_entity_decode("The Office of the United Nations High Commissioner for Human Rights (OHCHR) promotes and protects the human rights guaranteed under the Universal Declaration of Human Rights of 1948. The OHCHR was established by the United Nations General Assembly in 1993. The High Commissioner for Human Rights heads the OHCHR and spearheads the United Nations’ work in the field of human rights. The OHCHR supports the Special Procedures of the United Nations Human Rights Council which helps to generate reports on human rights from a thematic or country-specific perspective. The OHCHR has certain thematic priorities which include fighting inequality and countering discrimination, protection of human rights in conflict zones, widening the democratic space, strengthening human rights in the economic sphere, so on and so forth."),
            "level" => "Intermediate",
            "strength" => 80,
            "agenda" => array("The continuing crisis of Rohingya.","Dealing with the human Rights Violation in Palestine.")
),
array(
    "id" => "UNDPA",
        "name" => "The United Nations Department of Political Affairs",
        "description" => html_entity_decode("The United Nations Department of Political Affairs is the department of the Secretariat of the United Nations with the role of observing, assessing and analyzing the global political developments and then advising the UN Secretary General and his envoys to assist in the peaceful prevention and resolution of conflicts around the world. Established in 1992, the Department primarily addresses five issues which includes: Prevention and Mediation, Election, Decolonization, Palestinian Rights, Secretariat Support to Security Council and women, peace and security. On the basis of the issue taken up and the agenda at hand, portfolios that are to be seated in the committee are to be decided."),
        "level" => "Advanced",
        "strength" => 40,
        "agenda" => array("Preventing violent extremism.")
    ),
array(
    "id" => "IOM",
        "name" => "International Organization for Migration",
        "description" => html_entity_decode("The International Organization for Migration is an intergovernmental organization that provides recommendations concerning to migration, including internally and externally displaced persons, refugees, and migrant workers. IOM was established in 1951 to help resettle people displaced by World War II. The IOM has its own constitution. The IOM constitution lays out detailed analysis on the relationship between migration and social, economic and cultural development and also to the right of freedom of movement of persons. IOM basically works in four major areas of migration management which includes: Migration and Development, Facilitating Migration, Addressing Forced Migration and Regulating Migration. IOM has 166 member states and eight observer states."),
        "level" => "Beginner",
        "strength" => 140,
        "agenda" => array("Reformulating the Model of Implementation of the Protocol and Convention on the Status of Refugees in light of the ‘European Migration Crisis’.","Examining the Threat of Cultural Colonisation due to Mass Migration resulting from Refugee Flows or Otherwise, with emphasis on the European Union.")
),
array(
    "id" => "UNCSW",
        "name" => "United Nations Commission On the Status Of Women ",
    "description"=>"UN agencies actively followed their mandates to bring women into development approaches, programs and conferences. United Nations commitments to the advancement of women began with the signing of the UN Charter in San Francisco, in 1945. A sub-commission to the status of women was initiated under the Commission on Human Rights. On 21st June 1946, the sub-commission officially became the Commission on the Status of Women (CSW), a full-fledged commission responsible for ensuring women’s equality and promoting women’s rights. At each session, the commission holds a ministerial segment to reaffirm and strengthen political commitments to the realization of gender equality and the empowerment of women and girls in order to ensure high-level engagement and transparency of the deliberations of the Commission.",
        "level" => "Intermediate",
        "strength" => 80,
        "agenda" => array("Agenda 2030 for all: Gender, Learning, and Teaching in Primary and Secondary Education Contexts.","Creating a Culture of Gender Justice and Gender-Responsive Governance: A Multidimensional Approach.")
),
array(
    "id" => "UN OCEAN",
        "name" => "The United Nations Ocean Conference",
    "description" => html_entity_decode("The committee will be simulating the high-level conference of the United Nations which was convened in the UN HQ in June 2017. This conference is aimed at supporting Implementation of Sustainable Development Goal 14: Conserve and sustainably use the oceans, seas and marine resources for sustainable development. The Conference aims at enabling governments, UN bodies, and civil society groups to make voluntary commitments for action to improve the health of the oceans with over 1,000 commitments already taken at its last session. To follow up on the implementation of the voluntary commitments registered and announced at The Ocean Conference, the United Nations have launched nine thematic multi-stakeholder Communities of Ocean Action. The committee will be contributing to the follow-up and review process of the 2030 Agenda for Sustainable Development by providing an input to the high-level political forum on sustainable development."),
        "level" => "Beginner",
        "strength" => 130,
        "agenda" => array("Countering the effects of ocean and coastal acidification on marine ecosystems.","Economic policies and solutions towards reduction of plastic dumping in oceans.")
),
array(
    "id" => "KGB",
        "name" => "Joint Cabinet Crisis 1 ",
    "description" => html_entity_decode("The JCC or a Joint Cabinet Crisis is an unconventional yet specialized committee; regulated by a different set of Rules of Procedure, the committee is divided into two distinct blocs which are simulated and run independently, yet operate on the same issue and timeline. The nature of the discussion can be setup in a hypothetically modulated historic or futuristic configuration. The real-time and incalculable nature of the JCC ensures that every delegate is on its toes throughout the 3 days of the committee. Diplomacy, compromise, team-spirit and even some clandestinity will be of paramount importance in the battle of wits that is the JCC.
    
    We present to you in the 6th edition of KIIT International Model United Nations, a committee never simulated before here at KIIT.
    
    The Komitet Gosudarstvennoi Bezopanosti of the Soviet Union, also known as the KGB, was probably the strongest intelligence agency in the world at one point of time. It was set up in March 1954 in Moscow essentially as a state security committee and was attached to the Council of Ministers. However, its operation was more independent and undisclosed than any of the other bodies of government within the Soviet Union. The KGB was the world’s largest spy and state-security machine, involved in all aspects of life of everyday people in the Soviet Union. The KGB was divided into different directorates, each run by a representative whose purpose was to ensure the observations of the security regulations, and was instrumental in shaping the history of the Soviet Union at so many crucial junctures."),
        "level" => "Advanced",
        "strength" => 10,
        "agenda" => array("The political crisis in Chile.")
    ),
    array(
        "id" => "CIA",
            "name" => "Joint Cabinet Crisis 2",
        "description" => html_entity_decode("The JCC or a Joint Cabinet Crisis is an unconventional yet specialized committee; regulated by a different set of Rules of Procedure, the committee is divided into two distinct blocs which are simulated and run independently, yet operate on the same issue and timeline. The nature of the discussion can be setup in a hypothetically modulated historic or futuristic configuration. The real-time and incalculable nature of the JCC ensures that every delegate is on its toes throughout the 3 days of the committee . Diplomacy, compromise, team-spirit and even some clandestinity will be of paramount importance in the battle of wits that is the JCC.
        
        We present to you in the 6th edition of KIIT International Model United Nations, a committee never simulated before here at KIIT.
        
        Central Intelligence Agency, is the foreign Intelligence Agency of the Federal Government of United States which aims to “collect, analyse, evaluate and disseminate foreign Intelligence” in order to assist the President and the Government to make policy decisions for the security of United States of America.
        
        Since 1947, they have employed men and women, who under the command of Director of Central Intelligence collect information and provide Intelligence through Human Sources without any Law Inforcement Power. Their role have shaped multiple events in the history of United States and the World at large.
        
        This will be your chance to relive some of them."),
            "level" => "Advanced",
            "strength" => 10,
            "agenda" => array("The political crisis in Chile.")
        ),
        array(
            "id" => "UNSC",
                "name" => "United Nations Security Council",
            "description" => html_entity_decode("To keep the finest for the very last has been a bit of a norm for us, here at KIIT.
            
            Presenting the United Nations Security Council as our Showcase Committee:
            
            The Security Council is one of the principal organs of the United Nations and responsible for the maintenance of international peace and security. It consists of 15 member states, where 10 serve a two-year non-permanent term, while five – France, China, Russia, and United Kingdom, and the United States – serve as permanent members, all with veto power. Among other powers, the Security Council also recommends to the General Assembly the appointment of the Secretary general and the inclusion of new members to the UN. Together with the other five principal organs, the Security Council examines proposals to bolster the body’s role in maintaining international peace and security, to advance cooperation among nations and to promote respect for human rights. The Security Council is the apex body of the UN and is entirely responsible to uphold and safeguard the principles enshrined in the Charter of the UN."),
                "level" => "Showcase",
                "strength" => 15,
                "agenda" => array("Sanctions and targeted arms embargo review - Somalia and Eritria (750/1907) - Closed Room.","Situations in Middle East (Yemen) - Consultations.","MONUSCO - DRC Sanctions - Consultations and Adoption of Resolution","Children and Armed Conflict - Protecting children today prevents conflicts tomorrow (Open Debate).")
            ),
array(
"id" => "UNC",
    "name" => "The Special Committee on the Charter of the United Nations",
    "description" => html_entity_decode("Introducing our Flagship Committee for this year:
    Special Committee on the Charter of the United Nations.
        
    The Special Committee on the Charter of the United Nations was decided to be established at the twenty-ninth session of the General Assembly, to consider proposals that governments might formulate in order to enhance the functionality of the United Nations. The key interest of the committee will be to observe means of improvement of the role of the organization and rationalization of existing United Nations procedures, and also enhance cooperation between the United Nations and Regional Agencies in the maintenance of international peace and security. The General Assembly reconvenes the Special Committee every year to consider its reports and revises the mandate of the committee annually in its resolutions."),
    "level" => "Flagship",
    "strength" => 40,
    "agenda" => array("Maintenance of International Peace and Security
    – Sanctions and assistance to Third States under the provisions of the UN Charter.","Peaceful settlements of disputes.
    – Relationship and cooperation between the United Nations and regional organizations for the settlement of disputes in accordance with Chapter VIII and the Manila Declaration."," Identification of New Subjects.")
),
array(
"id" => "IP",
    "name" => "International Press",
"description" => html_entity_decode("As mentioned under Article 19 of the Universal Declaration of Human rights, everyone has the right to freedom of opinion and expression; this right includes freedom to hold opinions without interference and to seek, receive and impart information and ideas through any media and regardless of frontiers. Hence journalists play a crucial role in the functioning of the United Nations. In a nutshell, they help in mediating explanations to the public about what the organization does and why. Instead of representing the interests of a single country, the International Press Delegation allows participants to act as unbiased journalists, reporting on the proceedings of each simulation in the Conference. International Press investigates committee debates, conducts interviews, formulates newsletters and covers press conferences."),
    "level" => "Beginner",
    "strength" => 60,
    "agenda" => array("")
)
);
array_push($arr["committees"], $product_item);
echo json_encode($arr);
?>