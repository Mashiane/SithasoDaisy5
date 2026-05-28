B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=StaticCode
Version=10
@EndOfDesignText@
'Static code module - SDUI5Swiper Demo Examples
Sub Process_Globals
	Private BANano As BANano		'ignore
	Private app As SDUI5App			'ignore
	'Layout containers
	Private SDUI5Container1 As SDUI5Container		'ignore
	Private SDUI5Row1 As SDUI5Row		'ignore
	Private SDUI5Column1 As SDUI5Column		'ignore
	Private SDUI5Column2 As SDUI5Column		'ignore
	Private SDUI5Column3 As SDUI5Column		'ignore
	Private SDUI5Column4 As SDUI5Column		'ignore
	Private SDUI5Column5 As SDUI5Column		'ignore
	Private SDUI5Column6 As SDUI5Column		'ignore
	Private SDUI5Column7 As SDUI5Column		'ignore
	Private SDUI5Column8 As SDUI5Column		'ignore
	Private SDUI5Column9 As SDUI5Column		'ignore
	Private SDUI5Column10 As SDUI5Column		'ignore
	Private SDUI5Column11 As SDUI5Column		'ignore
	Private SDUI5Column12 As SDUI5Column		'ignore
	Private SDUI5Column13 As SDUI5Column		'ignore
	Private SDUI5Column14 As SDUI5Column		'ignore
	Private SDUI5Column15 As SDUI5Column		'ignore
	Private SDUI5Column16 As SDUI5Column		'ignore
	'Row separators for each demo section
	Private SDUI5Row2 As SDUI5Row		'ignore
	Private SDUI5Row3 As SDUI5Row		'ignore
	Private SDUI5Row4 As SDUI5Row		'ignore
	Private SDUI5Row5 As SDUI5Row		'ignore
	Private SDUI5Row6 As SDUI5Row		'ignore
	Private SDUI5Row7 As SDUI5Row		'ignore
	Private SDUI5Row8 As SDUI5Row		'ignore
	Private SDUI5Row9 As SDUI5Row		'ignore
	Private SDUI5Row10 As SDUI5Row		'ignore
	Private SDUI5Row11 As SDUI5Row		'ignore
	Private SDUI5Row12 As SDUI5Row		'ignore
	Private SDUI5Row13 As SDUI5Row		'ignore
	Private SDUI5Row14 As SDUI5Row		'ignore
	Private SDUI5Row15 As SDUI5Row		'ignore
	Private SDUI5Row16 As SDUI5Row		'ignore
	'Heading labels for each section
	Private lblDemo1 As SDUI5Text		'ignore
	Private lblDemo2 As SDUI5Text		'ignore
	Private lblDemo2b As SDUI5Text		'ignore
	Private lblDemo2c As SDUI5Text		'ignore
	Private lblDemo3 As SDUI5Text		'ignore
	Private lblDemo4a As SDUI5Text		'ignore
	Private lblDemo4b As SDUI5Text		'ignore
	Private lblDemo4c As SDUI5Text		'ignore
	Private lblDemo4d As SDUI5Text		'ignore
	Private lblDemo5 As SDUI5Text		'ignore
	Private lblDemo6 As SDUI5Text		'ignore
	Private lblDemo7 As SDUI5Text		'ignore
	Private lblDemo8 As SDUI5Text		'ignore
	'---- Demo 1: Basic Horizontal ----
	Private swiper1 As SDUI5Swiper		'ignore
	Private slide11 As SDUI5SwiperSlide		'ignore
	Private slide12 As SDUI5SwiperSlide		'ignore
	Private slide13 As SDUI5SwiperSlide		'ignore
	'---- Demo 2: Navigation + Pagination Types ----
	Private swiper2a As SDUI5Swiper		'ignore
	Private slide2a1 As SDUI5SwiperSlide		'ignore
	Private slide2a2 As SDUI5SwiperSlide		'ignore
	Private slide2a3 As SDUI5SwiperSlide		'ignore
	Private swiper2b As SDUI5Swiper		'ignore
	Private slide2b1 As SDUI5SwiperSlide		'ignore
	Private slide2b2 As SDUI5SwiperSlide		'ignore
	Private slide2b3 As SDUI5SwiperSlide		'ignore
	Private swiper2c As SDUI5Swiper		'ignore
	Private slide2c1 As SDUI5SwiperSlide		'ignore
	Private slide2c2 As SDUI5SwiperSlide		'ignore
	Private slide2c3 As SDUI5SwiperSlide		'ignore
	'---- Demo 3: Autoplay ----
	Private swiper3 As SDUI5Swiper		'ignore
	Private slide31 As SDUI5SwiperSlide		'ignore
	Private slide32 As SDUI5SwiperSlide		'ignore
	Private slide33 As SDUI5SwiperSlide		'ignore
	Private slide34 As SDUI5SwiperSlide		'ignore
	'---- Demo 4: Effects Showcase ----
	Private swiper4a As SDUI5Swiper		'ignore
	Private slide4a1 As SDUI5SwiperSlide		'ignore
	Private slide4a2 As SDUI5SwiperSlide		'ignore
	Private slide4a3 As SDUI5SwiperSlide		'ignore
	Private swiper4b As SDUI5Swiper		'ignore
	Private slide4b1 As SDUI5SwiperSlide		'ignore
	Private slide4b2 As SDUI5SwiperSlide		'ignore
	Private slide4b3 As SDUI5SwiperSlide		'ignore
	Private swiper4c As SDUI5Swiper		'ignore
	Private slide4c1 As SDUI5SwiperSlide		'ignore
	Private slide4c2 As SDUI5SwiperSlide		'ignore
	Private slide4c3 As SDUI5SwiperSlide		'ignore
	Private swiper4d As SDUI5Swiper		'ignore
	Private slide4d1 As SDUI5SwiperSlide		'ignore
	Private slide4d2 As SDUI5SwiperSlide		'ignore
	Private slide4d3 As SDUI5SwiperSlide		'ignore
	'---- Demo 5: Centered + Multiple Slides ----
	Private swiper5 As SDUI5Swiper		'ignore
	Private slide51 As SDUI5SwiperSlide		'ignore
	Private slide52 As SDUI5SwiperSlide		'ignore
	Private slide53 As SDUI5SwiperSlide		'ignore
	Private slide54 As SDUI5SwiperSlide		'ignore
	Private slide55 As SDUI5SwiperSlide		'ignore
	'---- Demo 6: Vertical + Scrollbar ----
	Private swiper6 As SDUI5Swiper		'ignore
	Private slide61 As SDUI5SwiperSlide		'ignore
	Private slide62 As SDUI5SwiperSlide		'ignore
	Private slide63 As SDUI5SwiperSlide		'ignore
	Private slide64 As SDUI5SwiperSlide		'ignore
	'---- Demo 7: Custom Navigation ----
	Private swiper7 As SDUI5Swiper		'ignore
	Private slide71 As SDUI5SwiperSlide		'ignore
	Private slide72 As SDUI5SwiperSlide		'ignore
	Private slide73 As SDUI5SwiperSlide		'ignore
	Private btnPrev7 As SDUI5Button		'ignore
	Private btnNext7 As SDUI5Button		'ignore
	'---- Demo 8: Swiper in Modal ----
	Private btnShowModal As SDUI5Button		'ignore
	Private modalSwiper As SDUI5Modal		'ignore
	Private swiper8 As SDUI5Swiper		'ignore
	Private slide81 As SDUI5SwiperSlide		'ignore
	Private slide82 As SDUI5SwiperSlide		'ignore
	Private slide83 As SDUI5SwiperSlide		'ignore
	Private slide84 As SDUI5SwiperSlide		'ignore
End Sub


Sub Show
	app = pgIndex.App
	BANano.Await(app.ClearPageView)
	'Load Swiper assets
	BANano.Await(app.UsesSwiper)
	'
	SDUI5Container1.Initialize(Me, "SDUI5Container1", "SDUI5Container1")
	SDUI5Container1.ParentID = app.PageView
	BANano.Await(SDUI5Container1.AddComponent)
	'
	'====================================================================
	' DEMO 1: Basic Horizontal Swiper
	'====================================================================
	SDUI5Row1.Initialize(Me, "SDUI5Row1", "SDUI5Row1")
	SDUI5Row1.ParentID = "SDUI5Container1"
	SDUI5Row1.Gap = ""
	BANano.Await(SDUI5Row1.AddComponent)
	'
	SDUI5Column1.Initialize(Me, "SDUI5Column1", "SDUI5Column1")
	SDUI5Column1.ParentID = "SDUI5Row1"
	SDUI5Column1.SizeMd = "12"
	BANano.Await(SDUI5Column1.AddComponent)
	'
	lblDemo1.Initialize(Me, "lblDemo1", "lblDemo1")
	lblDemo1.ParentID = "SDUI5Column1"
	lblDemo1.Text = "1. Basic Horizontal Swiper"
	lblDemo1.TextTag = "h2"
	lblDemo1.Classes = "pl-4 mb-4"
	BANano.Await(lblDemo1.AddComponent)
	'
	swiper1.Initialize(Me, "swiper1", "swiper1")
	swiper1.ParentID = "SDUI5Column1"
	swiper1.Height = "300px"
	swiper1.HasPagination = True
	swiper1.HasNavigation = False
	swiper1.Rounded = "lg"
	swiper1.Shadow = "md"
	BANano.Await(swiper1.AddComponent)
	'
	slide11.Initialize(Me, "slide11", "slide11")
	slide11.ParentID = "swiper1_slides"
	slide11.SwiperId = "swiper1"
	slide11.Image = "./assets/swiper_01.jpg"
	slide11.ImageCover = True
	slide11.ImageClasses = "w-full h-full object-cover"
	slide11.RefreshSwiper = False
	slide11.Classes = "w-full h-full"
	BANano.Await(slide11.AddComponent)
	'
	slide12.Initialize(Me, "slide12", "slide12")
	slide12.ParentID = "swiper1_slides"
	slide12.SwiperId = "swiper1"
	slide12.Image = "./assets/swiper_02.jpg"
	slide12.ImageCover = True
	slide12.ImageClasses = "w-full h-full object-cover"
	slide12.RefreshSwiper = False
	slide12.Classes = "w-full h-full"
	BANano.Await(slide12.AddComponent)
	'
	slide13.Initialize(Me, "slide13", "slide13")
	slide13.ParentID = "swiper1_slides"
	slide13.SwiperId = "swiper1"
	slide13.Image = "./assets/swiper_03.jpg"
	slide13.ImageCover = True
	slide13.ImageClasses = "w-full h-full object-cover"
	slide13.RefreshSwiper = True
	slide13.Classes = "w-full h-full"
	BANano.Await(slide13.AddComponent)
	'
	'====================================================================
	' DEMO 2: Navigation + Pagination Types
	'====================================================================
	SDUI5Row2.Initialize(Me, "SDUI5Row2", "SDUI5Row2")
	SDUI5Row2.ParentID = "SDUI5Container1"
	SDUI5Row2.Gap = ""
	BANano.Await(SDUI5Row2.AddComponent)
	'
	SDUI5Column2.Initialize(Me, "SDUI5Column2", "SDUI5Column2")
	SDUI5Column2.ParentID = "SDUI5Row2"
	SDUI5Column2.SizeMd = "4"
	BANano.Await(SDUI5Column2.AddComponent)
	'
	lblDemo2.Initialize(Me, "lblDemo2", "lblDemo2")
	lblDemo2.ParentID = "SDUI5Column2"
	lblDemo2.Text = "2a. Bullets + Navigation"
	lblDemo2.TextTag = "h3"
	lblDemo2.Classes = "pl-2 mb-4"
	BANano.Await(lblDemo2.AddComponent)
	'
	swiper2a.Initialize(Me, "swiper2a", "swiper2a")
	swiper2a.ParentID = "SDUI5Column2"
	swiper2a.Height = "250px"
	swiper2a.HasPagination = True
	swiper2a.HasNavigation = True
	swiper2a.PaginationType = swiper2a.PAGINATIONTYPE_BULLETS
	swiper2a.Rounded = "lg"
	swiper2a.Shadow = "md"
	BANano.Await(swiper2a.AddComponent)
	'
	slide2a1.Initialize(Me, "slide2a1", "slide2a1")
	slide2a1.ParentID = "swiper2a_slides"
	slide2a1.SwiperId = "swiper2a"
	slide2a1.Image = "./assets/swiper_04.jpg"
	slide2a1.ImageCover = True
	slide2a1.ImageClasses = "w-full h-full object-cover"
	slide2a1.RefreshSwiper = False
	slide2a1.Classes = "w-full h-full"
	BANano.Await(slide2a1.AddComponent)
	'
	slide2a2.Initialize(Me, "slide2a2", "slide2a2")
	slide2a2.ParentID = "swiper2a_slides"
	slide2a2.SwiperId = "swiper2a"
	slide2a2.Image = "./assets/swiper_05.jpg"
	slide2a2.ImageCover = True
	slide2a2.ImageClasses = "w-full h-full object-cover"
	slide2a2.RefreshSwiper = False
	slide2a2.Classes = "w-full h-full"
	BANano.Await(slide2a2.AddComponent)
	'
	slide2a3.Initialize(Me, "slide2a3", "slide2a3")
	slide2a3.ParentID = "swiper2a_slides"
	slide2a3.SwiperId = "swiper2a"
	slide2a3.Image = "./assets/swiper_06.jpg"
	slide2a3.ImageCover = True
	slide2a3.ImageClasses = "w-full h-full object-cover"
	slide2a3.RefreshSwiper = True
	slide2a3.Classes = "w-full h-full"
	BANano.Await(slide2a3.AddComponent)
	'
	'2b: Fraction pagination
	SDUI5Column3.Initialize(Me, "SDUI5Column3", "SDUI5Column3")
	SDUI5Column3.ParentID = "SDUI5Row2"
	SDUI5Column3.SizeMd = "4"
	BANano.Await(SDUI5Column3.AddComponent)
	'
	lblDemo2b.Initialize(Me, "lblDemo2b", "lblDemo2b")
	lblDemo2b.ParentID = "SDUI5Column3"
	lblDemo2b.Text = "2b. Fraction Pagination"
	lblDemo2b.TextTag = "h3"
	lblDemo2b.Classes = "pl-2 mb-4"
	BANano.Await(lblDemo2b.AddComponent)
	'
	swiper2b.Initialize(Me, "swiper2b", "swiper2b")
	swiper2b.ParentID = "SDUI5Column3"
	swiper2b.Height = "250px"
	swiper2b.HasPagination = True
	swiper2b.HasNavigation = True
	swiper2b.PaginationType = swiper2b.PAGINATIONTYPE_FRACTION
	swiper2b.Rounded = "lg"
	swiper2b.Shadow = "md"
	BANano.Await(swiper2b.AddComponent)
	'
	slide2b1.Initialize(Me, "slide2b1", "slide2b1")
	slide2b1.ParentID = "swiper2b_slides"
	slide2b1.SwiperId = "swiper2b"
	slide2b1.Image = "./assets/swiper_07.jpg"
	slide2b1.ImageCover = True
	slide2b1.ImageClasses = "w-full h-full object-cover"
	slide2b1.RefreshSwiper = False
	slide2b1.Classes = "w-full h-full"
	BANano.Await(slide2b1.AddComponent)
	'
	slide2b2.Initialize(Me, "slide2b2", "slide2b2")
	slide2b2.ParentID = "swiper2b_slides"
	slide2b2.SwiperId = "swiper2b"
	slide2b2.Image = "./assets/swiper_08.jpg"
	slide2b2.ImageCover = True
	slide2b2.ImageClasses = "w-full h-full object-cover"
	slide2b2.RefreshSwiper = False
	slide2b2.Classes = "w-full h-full"
	BANano.Await(slide2b2.AddComponent)
	'
	slide2b3.Initialize(Me, "slide2b3", "slide2b3")
	slide2b3.ParentID = "swiper2b_slides"
	slide2b3.SwiperId = "swiper2b"
	slide2b3.Image = "./assets/swiper_09.jpg"
	slide2b3.ImageCover = True
	slide2b3.ImageClasses = "w-full h-full object-cover"
	slide2b3.RefreshSwiper = True
	slide2b3.Classes = "w-full h-full"
	BANano.Await(slide2b3.AddComponent)
	'
	'2c: Progressbar pagination
	SDUI5Column4.Initialize(Me, "SDUI5Column4", "SDUI5Column4")
	SDUI5Column4.ParentID = "SDUI5Row2"
	SDUI5Column4.SizeMd = "4"
	BANano.Await(SDUI5Column4.AddComponent)
	'
	lblDemo2c.Initialize(Me, "lblDemo2c", "lblDemo2c")
	lblDemo2c.ParentID = "SDUI5Column4"
	lblDemo2c.Text = "2c. Progressbar Pagination"
	lblDemo2c.TextTag = "h3"
	lblDemo2c.Classes = "pl-2 mb-4"
	BANano.Await(lblDemo2c.AddComponent)
	'
	swiper2c.Initialize(Me, "swiper2c", "swiper2c")
	swiper2c.ParentID = "SDUI5Column4"
	swiper2c.Height = "250px"
	swiper2c.HasPagination = True
	swiper2c.HasNavigation = True
	swiper2c.PaginationType = swiper2c.PAGINATIONTYPE_PROGRESSBAR
	swiper2c.Rounded = "lg"
	swiper2c.Shadow = "md"
	BANano.Await(swiper2c.AddComponent)
	'
	slide2c1.Initialize(Me, "slide2c1", "slide2c1")
	slide2c1.ParentID = "swiper2c_slides"
	slide2c1.SwiperId = "swiper2c"
	slide2c1.Image = "./assets/swiper_10.jpg"
	slide2c1.ImageCover = True
	slide2c1.ImageClasses = "w-full h-full object-cover"
	slide2c1.RefreshSwiper = False
	slide2c1.Classes = "w-full h-full"
	BANano.Await(slide2c1.AddComponent)
	'
	slide2c2.Initialize(Me, "slide2c2", "slide2c2")
	slide2c2.ParentID = "swiper2c_slides"
	slide2c2.SwiperId = "swiper2c"
	slide2c2.Image = "./assets/swiper_11.jpg"
	slide2c2.ImageCover = True
	slide2c2.ImageClasses = "w-full h-full object-cover"
	slide2c2.RefreshSwiper = False
	slide2c2.Classes = "w-full h-full"
	BANano.Await(slide2c2.AddComponent)
	'
	slide2c3.Initialize(Me, "slide2c3", "slide2c3")
	slide2c3.ParentID = "swiper2c_slides"
	slide2c3.SwiperId = "swiper2c"
	slide2c3.Image = "./assets/swiper_12.jpg"
	slide2c3.ImageCover = True
	slide2c3.ImageClasses = "w-full h-full object-cover"
	slide2c3.RefreshSwiper = True
	slide2c3.Classes = "w-full h-full"
	BANano.Await(slide2c3.AddComponent)
	'
	'====================================================================
	' DEMO 3: Autoplay
	'====================================================================
	SDUI5Row3.Initialize(Me, "SDUI5Row3", "SDUI5Row3")
	SDUI5Row3.ParentID = "SDUI5Container1"
	SDUI5Row3.Gap = ""
	BANano.Await(SDUI5Row3.AddComponent)
	'
	SDUI5Column5.Initialize(Me, "SDUI5Column5", "SDUI5Column5")
	SDUI5Column5.ParentID = "SDUI5Row3"
	SDUI5Column5.SizeMd = "12"
	BANano.Await(SDUI5Column5.AddComponent)
	'
	lblDemo3.Initialize(Me, "lblDemo3", "lblDemo3")
	lblDemo3.ParentID = "SDUI5Column5"
	lblDemo3.Text = "3. Autoplay (3s delay, pause on hover)"
	lblDemo3.TextTag = "h2"
	lblDemo3.Classes = "pl-4 mb-4"
	BANano.Await(lblDemo3.AddComponent)
	'
	swiper3.Initialize(Me, "swiper3", "swiper3")
	swiper3.ParentID = "SDUI5Column5"
	swiper3.Height = "300px"
	swiper3.HasPagination = True
	swiper3.HasNavigation = True
	swiper3.AutoPlay = True
	swiper3.AutoPlayDelay = 3000
	swiper3.AutoPlayPauseOnMouseEnter = True
	swiper3.AutoPlayDisableOnInteraction = False
	swiper3.Rounded = "lg"
	swiper3.Shadow = "md"
	BANano.Await(swiper3.AddComponent)
	'
	slide31.Initialize(Me, "slide31", "slide31")
	slide31.ParentID = "swiper3_slides"
	slide31.SwiperId = "swiper3"
	slide31.Image = "./assets/swiper_13.jpg"
	slide31.ImageCover = True
	slide31.ImageClasses = "w-full h-full object-cover"
	slide31.RefreshSwiper = False
	slide31.Classes = "w-full h-full"
	BANano.Await(slide31.AddComponent)
	'
	slide32.Initialize(Me, "slide32", "slide32")
	slide32.ParentID = "swiper3_slides"
	slide32.SwiperId = "swiper3"
	slide32.Image = "./assets/swiper_14.jpg"
	slide32.ImageCover = True
	slide32.ImageClasses = "w-full h-full object-cover"
	slide32.RefreshSwiper = False
	slide32.Classes = "w-full h-full"
	BANano.Await(slide32.AddComponent)
	'
	slide33.Initialize(Me, "slide33", "slide33")
	slide33.ParentID = "swiper3_slides"
	slide33.SwiperId = "swiper3"
	slide33.Image = "./assets/swiper_15.jpg"
	slide33.ImageCover = True
	slide33.ImageClasses = "w-full h-full object-cover"
	slide33.RefreshSwiper = False
	slide33.Classes = "w-full h-full"
	BANano.Await(slide33.AddComponent)
	'
	slide34.Initialize(Me, "slide34", "slide34")
	slide34.ParentID = "swiper3_slides"
	slide34.SwiperId = "swiper3"
	slide34.Image = "./assets/swiper_16.jpg"
	slide34.ImageCover = True
	slide34.ImageClasses = "w-full h-full object-cover"
	slide34.RefreshSwiper = True
	slide34.Classes = "w-full h-full"
	BANano.Await(slide34.AddComponent)
	'
	'====================================================================
	' DEMO 4: Effects Showcase (Cube, CoverFlow, Fade, Flip)
	'====================================================================
	SDUI5Row4.Initialize(Me, "SDUI5Row4", "SDUI5Row4")
	SDUI5Row4.ParentID = "SDUI5Container1"
	SDUI5Row4.Gap = ""
	BANano.Await(SDUI5Row4.AddComponent)
	'
	'4a: Cube Effect
	SDUI5Column6.Initialize(Me, "SDUI5Column6", "SDUI5Column6")
	SDUI5Column6.ParentID = "SDUI5Row4"
	SDUI5Column6.SizeMd = "3"
	BANano.Await(SDUI5Column6.AddComponent)
	'
	lblDemo4a.Initialize(Me, "lblDemo4a", "lblDemo4a")
	lblDemo4a.ParentID = "SDUI5Column6"
	lblDemo4a.Text = "4a. Cube Effect"
	lblDemo4a.TextTag = "h3"
	lblDemo4a.Classes = "pl-2 mb-4"
	BANano.Await(lblDemo4a.AddComponent)
	'
	swiper4a.Initialize(Me, "swiper4a", "swiper4a")
	swiper4a.ParentID = "SDUI5Column6"
	swiper4a.Height = "250px"
	swiper4a.Effect = swiper4a.EFFECT_CUBE
	swiper4a.HasPagination = True
	swiper4a.HasNavigation = True
	swiper4a.Rounded = "lg"
	swiper4a.Shadow = "md"
	BANano.Await(swiper4a.AddComponent)
	'
	slide4a1.Initialize(Me, "slide4a1", "slide4a1")
	slide4a1.ParentID = "swiper4a_slides"
	slide4a1.SwiperId = "swiper4a"
	slide4a1.Image = "./assets/swiper_17.jpg"
	slide4a1.ImageCover = True
	slide4a1.ImageClasses = "w-full h-full object-cover"
	slide4a1.RefreshSwiper = False
	slide4a1.Classes = "w-full h-full"
	BANano.Await(slide4a1.AddComponent)
	'
	slide4a2.Initialize(Me, "slide4a2", "slide4a2")
	slide4a2.ParentID = "swiper4a_slides"
	slide4a2.SwiperId = "swiper4a"
	slide4a2.Image = "./assets/swiper_18.jpg"
	slide4a2.ImageCover = True
	slide4a2.ImageClasses = "w-full h-full object-cover"
	slide4a2.RefreshSwiper = False
	slide4a2.Classes = "w-full h-full"
	BANano.Await(slide4a2.AddComponent)
	'
	slide4a3.Initialize(Me, "slide4a3", "slide4a3")
	slide4a3.ParentID = "swiper4a_slides"
	slide4a3.SwiperId = "swiper4a"
	slide4a3.Image = "./assets/swiper_19.jpg"
	slide4a3.ImageCover = True
	slide4a3.ImageClasses = "w-full h-full object-cover"
	slide4a3.RefreshSwiper = True
	slide4a3.Classes = "w-full h-full"
	BANano.Await(slide4a3.AddComponent)
	'
	'4b: CoverFlow Effect
	SDUI5Column7.Initialize(Me, "SDUI5Column7", "SDUI5Column7")
	SDUI5Column7.ParentID = "SDUI5Row4"
	SDUI5Column7.SizeMd = "3"
	BANano.Await(SDUI5Column7.AddComponent)
	'
	lblDemo4b.Initialize(Me, "lblDemo4b", "lblDemo4b")
	lblDemo4b.ParentID = "SDUI5Column7"
	lblDemo4b.Text = "4b. CoverFlow Effect"
	lblDemo4b.TextTag = "h3"
	lblDemo4b.Classes = "pl-2 mb-4"
	BANano.Await(lblDemo4b.AddComponent)
	'
	swiper4b.Initialize(Me, "swiper4b", "swiper4b")
	swiper4b.ParentID = "SDUI5Column7"
	swiper4b.Height = "250px"
	swiper4b.Effect = swiper4b.EFFECT_COVERFLOW
	swiper4b.CenteredSlides = True
	swiper4b.SlidesPerView = "2"
	swiper4b.HasPagination = True
	swiper4b.HasNavigation = True
	swiper4b.Rounded = "lg"
	swiper4b.Shadow = "md"
	BANano.Await(swiper4b.AddComponent)
	'
	slide4b1.Initialize(Me, "slide4b1", "slide4b1")
	slide4b1.ParentID = "swiper4b_slides"
	slide4b1.SwiperId = "swiper4b"
	slide4b1.Image = "./assets/swiper_20.jpg"
	slide4b1.ImageCover = True
	slide4b1.ImageClasses = "w-full h-full object-cover"
	slide4b1.RefreshSwiper = False
	slide4b1.Classes = "w-full h-full"
	BANano.Await(slide4b1.AddComponent)
	'
	slide4b2.Initialize(Me, "slide4b2", "slide4b2")
	slide4b2.ParentID = "swiper4b_slides"
	slide4b2.SwiperId = "swiper4b"
	slide4b2.Image = "./assets/swiper_21.jpg"
	slide4b2.ImageCover = True
	slide4b2.ImageClasses = "w-full h-full object-cover"
	slide4b2.RefreshSwiper = False
	slide4b2.Classes = "w-full h-full"
	BANano.Await(slide4b2.AddComponent)
	'
	slide4b3.Initialize(Me, "slide4b3", "slide4b3")
	slide4b3.ParentID = "swiper4b_slides"
	slide4b3.SwiperId = "swiper4b"
	slide4b3.Image = "./assets/swiper_22.jpg"
	slide4b3.ImageCover = True
	slide4b3.ImageClasses = "w-full h-full object-cover"
	slide4b3.RefreshSwiper = True
	slide4b3.Classes = "w-full h-full"
	BANano.Await(slide4b3.AddComponent)
	'
	'4c: Fade Effect
	SDUI5Column8.Initialize(Me, "SDUI5Column8", "SDUI5Column8")
	SDUI5Column8.ParentID = "SDUI5Row4"
	SDUI5Column8.SizeMd = "3"
	BANano.Await(SDUI5Column8.AddComponent)
	'
	lblDemo4c.Initialize(Me, "lblDemo4c", "lblDemo4c")
	lblDemo4c.ParentID = "SDUI5Column8"
	lblDemo4c.Text = "4c. Fade Effect"
	lblDemo4c.TextTag = "h3"
	lblDemo4c.Classes = "pl-2 mb-4"
	BANano.Await(lblDemo4c.AddComponent)
	'
	swiper4c.Initialize(Me, "swiper4c", "swiper4c")
	swiper4c.ParentID = "SDUI5Column8"
	swiper4c.Height = "250px"
	swiper4c.Effect = swiper4c.EFFECT_FADE
	swiper4c.HasPagination = True
	swiper4c.HasNavigation = True
	swiper4c.Rounded = "lg"
	swiper4c.Shadow = "md"
	BANano.Await(swiper4c.AddComponent)
	'
	slide4c1.Initialize(Me, "slide4c1", "slide4c1")
	slide4c1.ParentID = "swiper4c_slides"
	slide4c1.SwiperId = "swiper4c"
	slide4c1.Image = "./assets/swiper_23.jpg"
	slide4c1.ImageCover = True
	slide4c1.ImageClasses = "w-full h-full object-cover"
	slide4c1.RefreshSwiper = False
	slide4c1.Classes = "w-full h-full"
	BANano.Await(slide4c1.AddComponent)
	'
	slide4c2.Initialize(Me, "slide4c2", "slide4c2")
	slide4c2.ParentID = "swiper4c_slides"
	slide4c2.SwiperId = "swiper4c"
	slide4c2.Image = "./assets/swiper_24.jpg"
	slide4c2.ImageCover = True
	slide4c2.ImageClasses = "w-full h-full object-cover"
	slide4c2.RefreshSwiper = False
	slide4c2.Classes = "w-full h-full"
	BANano.Await(slide4c2.AddComponent)
	'
	slide4c3.Initialize(Me, "slide4c3", "slide4c3")
	slide4c3.ParentID = "swiper4c_slides"
	slide4c3.SwiperId = "swiper4c"
	slide4c3.Image = "./assets/swiper_25.jpg"
	slide4c3.ImageCover = True
	slide4c3.ImageClasses = "w-full h-full object-cover"
	slide4c3.RefreshSwiper = True
	slide4c3.Classes = "w-full h-full"
	BANano.Await(slide4c3.AddComponent)
	'
	'4d: Flip Effect
	SDUI5Column9.Initialize(Me, "SDUI5Column9", "SDUI5Column9")
	SDUI5Column9.ParentID = "SDUI5Row4"
	SDUI5Column9.SizeMd = "3"
	BANano.Await(SDUI5Column9.AddComponent)
	'
	lblDemo4d.Initialize(Me, "lblDemo4d", "lblDemo4d")
	lblDemo4d.ParentID = "SDUI5Column9"
	lblDemo4d.Text = "4d. Flip Effect"
	lblDemo4d.TextTag = "h3"
	lblDemo4d.Classes = "pl-2 mb-4"
	BANano.Await(lblDemo4d.AddComponent)
	'
	swiper4d.Initialize(Me, "swiper4d", "swiper4d")
	swiper4d.ParentID = "SDUI5Column9"
	swiper4d.Height = "250px"
	swiper4d.Effect = swiper4d.EFFECT_FLIP
	swiper4d.HasPagination = True
	swiper4d.HasNavigation = True
	swiper4d.Rounded = "lg"
	swiper4d.Shadow = "md"
	BANano.Await(swiper4d.AddComponent)
	'
	slide4d1.Initialize(Me, "slide4d1", "slide4d1")
	slide4d1.ParentID = "swiper4d_slides"
	slide4d1.SwiperId = "swiper4d"
	slide4d1.Image = "./assets/swiper_26.jpg"
	slide4d1.ImageCover = True
	slide4d1.ImageClasses = "w-full h-full object-cover"
	slide4d1.RefreshSwiper = False
	slide4d1.Classes = "w-full h-full"
	BANano.Await(slide4d1.AddComponent)
	'
	slide4d2.Initialize(Me, "slide4d2", "slide4d2")
	slide4d2.ParentID = "swiper4d_slides"
	slide4d2.SwiperId = "swiper4d"
	slide4d2.Image = "./assets/swiper_27.jpg"
	slide4d2.ImageCover = True
	slide4d2.ImageClasses = "w-full h-full object-cover"
	slide4d2.RefreshSwiper = False
	slide4d2.Classes = "w-full h-full"
	BANano.Await(slide4d2.AddComponent)
	'
	slide4d3.Initialize(Me, "slide4d3", "slide4d3")
	slide4d3.ParentID = "swiper4d_slides"
	slide4d3.SwiperId = "swiper4d"
	slide4d3.Image = "./assets/swiper_28.jpg"
	slide4d3.ImageCover = True
	slide4d3.ImageClasses = "w-full h-full object-cover"
	slide4d3.RefreshSwiper = True
	slide4d3.Classes = "w-full h-full"
	BANano.Await(slide4d3.AddComponent)
	'
	'====================================================================
	' DEMO 5: Centered + Multiple Slides Per View
	'====================================================================
	SDUI5Row5.Initialize(Me, "SDUI5Row5", "SDUI5Row5")
	SDUI5Row5.ParentID = "SDUI5Container1"
	SDUI5Row5.Gap = ""
	BANano.Await(SDUI5Row5.AddComponent)
	'
	SDUI5Column10.Initialize(Me, "SDUI5Column10", "SDUI5Column10")
	SDUI5Column10.ParentID = "SDUI5Row5"
	SDUI5Column10.SizeMd = "12"
	BANano.Await(SDUI5Column10.AddComponent)
	'
	lblDemo5.Initialize(Me, "lblDemo5", "lblDemo5")
	lblDemo5.ParentID = "SDUI5Column10"
	lblDemo5.Text = "5. Centered Slides (3 per view, 30px space)"
	lblDemo5.TextTag = "h2"
	lblDemo5.Classes = "pl-4 mb-4"
	BANano.Await(lblDemo5.AddComponent)
	'
	swiper5.Initialize(Me, "swiper5", "swiper5")
	swiper5.ParentID = "SDUI5Column10"
	swiper5.Height = "300px"
	swiper5.CenteredSlides = True
	swiper5.SlidesPerView = "3"
	swiper5.SpaceBetween = "30"
	swiper5.HasPagination = True
	swiper5.HasNavigation = True
	swiper5.Rounded = "lg"
	swiper5.Shadow = "md"
	BANano.Await(swiper5.AddComponent)
	'
	slide51.Initialize(Me, "slide51", "slide51")
	slide51.ParentID = "swiper5_slides"
	slide51.SwiperId = "swiper5"
	slide51.Image = "./assets/swiper_29.jpg"
	slide51.ImageCover = True
	slide51.ImageClasses = "w-full h-full object-cover"
	slide51.RefreshSwiper = False
	slide51.Classes = "w-full h-full"
	BANano.Await(slide51.AddComponent)
	'
	slide52.Initialize(Me, "slide52", "slide52")
	slide52.ParentID = "swiper5_slides"
	slide52.SwiperId = "swiper5"
	slide52.Image = "./assets/swiper_30.jpg"
	slide52.ImageCover = True
	slide52.ImageClasses = "w-full h-full object-cover"
	slide52.RefreshSwiper = False
	slide52.Classes = "w-full h-full"
	BANano.Await(slide52.AddComponent)
	'
	slide53.Initialize(Me, "slide53", "slide53")
	slide53.ParentID = "swiper5_slides"
	slide53.SwiperId = "swiper5"
	slide53.Image = "./assets/swiper_31.jpg"
	slide53.ImageCover = True
	slide53.ImageClasses = "w-full h-full object-cover"
	slide53.RefreshSwiper = False
	slide53.Classes = "w-full h-full"
	BANano.Await(slide53.AddComponent)
	'
	slide54.Initialize(Me, "slide54", "slide54")
	slide54.ParentID = "swiper5_slides"
	slide54.SwiperId = "swiper5"
	slide54.Image = "./assets/swiper_32.jpg"
	slide54.ImageCover = True
	slide54.ImageClasses = "w-full h-full object-cover"
	slide54.RefreshSwiper = False
	slide54.Classes = "w-full h-full"
	BANano.Await(slide54.AddComponent)
	'
	slide55.Initialize(Me, "slide55", "slide55")
	slide55.ParentID = "swiper5_slides"
	slide55.SwiperId = "swiper5"
	slide55.Image = "./assets/swiper_33.jpg"
	slide55.ImageCover = True
	slide55.ImageClasses = "w-full h-full object-cover"
	slide55.RefreshSwiper = True
	slide55.Classes = "w-full h-full"
	BANano.Await(slide55.AddComponent)
	'
	'====================================================================
	' DEMO 6: Vertical + Scrollbar
	'====================================================================
	SDUI5Row6.Initialize(Me, "SDUI5Row6", "SDUI5Row6")
	SDUI5Row6.ParentID = "SDUI5Container1"
	SDUI5Row6.Gap = ""
	BANano.Await(SDUI5Row6.AddComponent)
	'
	SDUI5Column11.Initialize(Me, "SDUI5Column11", "SDUI5Column11")
	SDUI5Column11.ParentID = "SDUI5Row6"
	SDUI5Column11.SizeMd = "6"
	BANano.Await(SDUI5Column11.AddComponent)
	'
	lblDemo6.Initialize(Me, "lblDemo6", "lblDemo6")
	lblDemo6.ParentID = "SDUI5Column11"
	lblDemo6.Text = "6. Vertical + Scrollbar + MouseWheel"
	lblDemo6.TextTag = "h2"
	lblDemo6.Classes = "pl-4 mb-4"
	BANano.Await(lblDemo6.AddComponent)
	'
	swiper6.Initialize(Me, "swiper6", "swiper6")
	swiper6.ParentID = "SDUI5Column11"
	swiper6.Height = "400px"
	swiper6.Direction = swiper6.DIRECTION_VERTICAL
	swiper6.MouseWheel = True
	swiper6.HasPagination = True
	swiper6.HasScrollbar = True
	swiper6.Rounded = "lg"
	swiper6.Shadow = "md"
	BANano.Await(swiper6.AddComponent)
	'
	slide61.Initialize(Me, "slide61", "slide61")
	slide61.ParentID = "swiper6_slides"
	slide61.SwiperId = "swiper6"
	slide61.Image = "./assets/swiper_34.jpg"
	slide61.ImageCover = True
	slide61.ImageClasses = "w-full h-full object-cover"
	slide61.RefreshSwiper = False
	slide61.Classes = "w-full h-full"
	BANano.Await(slide61.AddComponent)
	'
	slide62.Initialize(Me, "slide62", "slide62")
	slide62.ParentID = "swiper6_slides"
	slide62.SwiperId = "swiper6"
	slide62.Image = "./assets/swiper_35.jpg"
	slide62.ImageCover = True
	slide62.ImageClasses = "w-full h-full object-cover"
	slide62.RefreshSwiper = False
	slide62.Classes = "w-full h-full"
	BANano.Await(slide62.AddComponent)
	'
	slide63.Initialize(Me, "slide63", "slide63")
	slide63.ParentID = "swiper6_slides"
	slide63.SwiperId = "swiper6"
	slide63.Image = "./assets/swiper_36.jpg"
	slide63.ImageCover = True
	slide63.ImageClasses = "w-full h-full object-cover"
	slide63.RefreshSwiper = False
	slide63.Classes = "w-full h-full"
	BANano.Await(slide63.AddComponent)
	'
	slide64.Initialize(Me, "slide64", "slide64")
	slide64.ParentID = "swiper6_slides"
	slide64.SwiperId = "swiper6"
	slide64.Image = "./assets/swiper_37.jpg"
	slide64.ImageCover = True
	slide64.ImageClasses = "w-full h-full object-cover"
	slide64.RefreshSwiper = True
	slide64.Classes = "w-full h-full"
	BANano.Await(slide64.AddComponent)
	'
	'====================================================================
	' DEMO 7: Custom Navigation
	'====================================================================
	SDUI5Column12.Initialize(Me, "SDUI5Column12", "SDUI5Column12")
	SDUI5Column12.ParentID = "SDUI5Row6"
	SDUI5Column12.SizeMd = "6"
	BANano.Await(SDUI5Column12.AddComponent)
	'
	lblDemo7.Initialize(Me, "lblDemo7", "lblDemo7")
	lblDemo7.ParentID = "SDUI5Column12"
	lblDemo7.Text = "7. Custom Navigation (external buttons)"
	lblDemo7.TextTag = "h2"
	lblDemo7.Classes = "pl-4 mb-4"
	BANano.Await(lblDemo7.AddComponent)
	'
	swiper7.Initialize(Me, "swiper7", "swiper7")
	swiper7.ParentID = "SDUI5Column12"
	swiper7.Height = "300px"
	swiper7.HasPagination = True
	swiper7.HasNavigation = False
	swiper7.OwnNavigation = True
	swiper7.NextNavigation = "#btnNext7"
	swiper7.PrevNavigation = "#btnPrev7"
	swiper7.Rounded = "lg"
	swiper7.Shadow = "md"
	BANano.Await(swiper7.AddComponent)
	'
	slide71.Initialize(Me, "slide71", "slide71")
	slide71.ParentID = "swiper7_slides"
	slide71.SwiperId = "swiper7"
	slide71.Image = "./assets/swiper_38.jpg"
	slide71.ImageCover = True
	slide71.ImageClasses = "w-full h-full object-cover"
	slide71.RefreshSwiper = False
	slide71.Classes = "w-full h-full"
	BANano.Await(slide71.AddComponent)
	'
	slide72.Initialize(Me, "slide72", "slide72")
	slide72.ParentID = "swiper7_slides"
	slide72.SwiperId = "swiper7"
	slide72.Image = "./assets/swiper_39.jpg"
	slide72.ImageCover = True
	slide72.ImageClasses = "w-full h-full object-cover"
	slide72.RefreshSwiper = False
	slide72.Classes = "w-full h-full"
	BANano.Await(slide72.AddComponent)
	'
	slide73.Initialize(Me, "slide73", "slide73")
	slide73.ParentID = "swiper7_slides"
	slide73.SwiperId = "swiper7"
	slide73.Image = "./assets/swiper_40.jpg"
	slide73.ImageCover = True
	slide73.ImageClasses = "w-full h-full object-cover"
	slide73.RefreshSwiper = True
	slide73.Classes = "w-full h-full"
	BANano.Await(slide73.AddComponent)
	'
	btnPrev7.Initialize(Me, "btnPrev7", "btnPrev7")
	btnPrev7.ParentID = "SDUI5Column12"
	btnPrev7.Text = "Previous"
	btnPrev7.Color = "primary"
	btnPrev7.Size = "sm"
	btnPrev7.Classes = "mt-2 mr-2"
	BANano.Await(btnPrev7.AddComponent)
	'
	btnNext7.Initialize(Me, "btnNext7", "btnNext7")
	btnNext7.ParentID = "SDUI5Column12"
	btnNext7.Text = "Next"
	btnNext7.Color = "primary"
	btnNext7.Size = "sm"
	btnNext7.Classes = "mt-2"
	BANano.Await(btnNext7.AddComponent)
	'
	'====================================================================
	' DEMO 8: Swiper in Modal
	'====================================================================
	SDUI5Row7.Initialize(Me, "SDUI5Row7", "SDUI5Row7")
	SDUI5Row7.ParentID = "SDUI5Container1"
	SDUI5Row7.Gap = ""
	BANano.Await(SDUI5Row7.AddComponent)
	'
	SDUI5Column13.Initialize(Me, "SDUI5Column13", "SDUI5Column13")
	SDUI5Column13.ParentID = "SDUI5Row7"
	SDUI5Column13.SizeMd = "12"
	BANano.Await(SDUI5Column13.AddComponent)
	'
	lblDemo8.Initialize(Me, "lblDemo8", "lblDemo8")
	lblDemo8.ParentID = "SDUI5Column13"
	lblDemo8.Text = "8. Swiper inside a Modal"
	lblDemo8.TextTag = "h2"
	lblDemo8.Classes = "pl-4 mb-4"
	BANano.Await(lblDemo8.AddComponent)
	'
	btnShowModal.Initialize(Me, "btnShowModal", "btnShowModal")
	btnShowModal.ParentID = "SDUI5Column13"
	btnShowModal.Text = "Open Image Gallery Modal"
	btnShowModal.Color = "secondary"
	btnShowModal.Size = "md"
	btnShowModal.Classes = "ml-4"
	BANano.Await(btnShowModal.AddComponent)
	'
	'Modal with swiper inside
	modalSwiper.Initialize(Me, "modalSwiper", "modalSwiper")
	modalSwiper.ParentID = app.PageView
	modalSwiper.Title = "Image Gallery"
	modalSwiper.Width = "800px"
	modalSwiper.ActionType = modalSwiper.ACTIONTYPE_YES
	modalSwiper.YesCaption = "Close"
	modalSwiper.YesColor = "primary"
	modalSwiper.Backdrop = True
	modalSwiper.MoveFrom = modalSwiper.MOVEFROM_MIDDLE
	BANano.Await(modalSwiper.AddComponent)
	'
	'Swiper inside modal form body
	swiper8.Initialize(Me, "swiper8", "swiper8")
	swiper8.ParentID = "modalSwiper_form"
	swiper8.Height = "400px"
	swiper8.Effect = swiper8.EFFECT_FADE
	swiper8.HasPagination = True
	swiper8.HasNavigation = True
	swiper8.AutoPlay = True
	swiper8.AutoPlayDelay = 4000
	swiper8.AutoPlayDisableOnInteraction = False
	swiper8.Rounded = "lg"
	BANano.Await(swiper8.AddComponent)
	'
	slide81.Initialize(Me, "slide81", "slide81")
	slide81.ParentID = "swiper8_slides"
	slide81.SwiperId = "swiper8"
	slide81.Image = "./assets/swiper_41.jpg"
	slide81.ImageCover = True
	slide81.ImageClasses = "w-full h-full object-cover"
	slide81.RefreshSwiper = False
	slide81.Classes = "w-full h-full"
	BANano.Await(slide81.AddComponent)
	'
	slide82.Initialize(Me, "slide82", "slide82")
	slide82.ParentID = "swiper8_slides"
	slide82.SwiperId = "swiper8"
	slide82.Image = "./assets/swiper_42.jpg"
	slide82.ImageCover = True
	slide82.ImageClasses = "w-full h-full object-cover"
	slide82.RefreshSwiper = False
	slide82.Classes = "w-full h-full"
	BANano.Await(slide82.AddComponent)
	'
	slide83.Initialize(Me, "slide83", "slide83")
	slide83.ParentID = "swiper8_slides"
	slide83.SwiperId = "swiper8"
	slide83.Image = "./assets/swiper_43.jpg"
	slide83.ImageCover = True
	slide83.ImageClasses = "w-full h-full object-cover"
	slide83.RefreshSwiper = False
	slide83.Classes = "w-full h-full"
	BANano.Await(slide83.AddComponent)
	'
	slide84.Initialize(Me, "slide84", "slide84")
	slide84.ParentID = "swiper8_slides"
	slide84.SwiperId = "swiper8"
	slide84.Image = "./assets/swiper_44.jpg"
	slide84.ImageCover = True
	slide84.ImageClasses = "w-full h-full object-cover"
	slide84.RefreshSwiper = True
	slide84.Classes = "w-full h-full"
	BANano.Await(slide84.AddComponent)
	'
	pgIndex.UpdateTitle("SDUI5Swiper")
End Sub

'Custom navigation button handlers for Demo 7
Private Sub btnPrev7_Click (e As BANanoEvent)
	e.PreventDefault
	swiper7.slidePrev
End Sub

Private Sub btnNext7_Click (e As BANanoEvent)
	e.PreventDefault
	swiper7.slideNext
End Sub

'Open modal for Demo 8
Private Sub btnShowModal_Click (e As BANanoEvent)
	e.PreventDefault
	BANano.Await(modalSwiper.Show)
End Sub

'Modal shown - refresh swiper to fix layout in hidden container
Private Sub modalSwiper_Show (e As BANanoEvent)
'	swiper8.update
End Sub

'Close modal
Private Sub modalSwiper_Yes_Click (e As BANanoEvent)
	e.PreventDefault
	swiper8.setAutoPlay(False)
	modalSwiper.Close
End Sub
