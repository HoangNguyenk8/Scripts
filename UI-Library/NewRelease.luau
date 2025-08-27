
























local a="Release Version 3.1"

local b={Folder="Zinner",Options={},ThemeGradient=ColorSequence.new{ColorSequenceKeypoint.new(0.00,Color3.fromRGB(117,164,206)),ColorSequenceKeypoint.new(0.50,Color3.fromRGB(123,201,201)),ColorSequenceKeypoint.new(1.00,Color3.fromRGB(224,138,175))}}

local c=game:GetService"UserInputService"
local d=game:GetService"TweenService"
local e=game:GetService"HttpService"
local f=game:GetService"RunService"
local g=game:GetService"LocalizationService"
local h=game:GetService"Players"
local i=h.LocalPlayer
local j=workspace.CurrentCamera
local k=game:GetService"CoreGui"

local l


if f:IsStudio()then
l=true
end


local m={
Lucide=nil,
Material={perm_media=
"http://www.roblox.com/asset/?id=6031215982";sticky_note_2=
"http://www.roblox.com/asset/?id=6031265972";gavel=
"http://www.roblox.com/asset/?id=6023565902";table_view=
"http://www.roblox.com/asset/?id=6031233835";home=
"http://www.roblox.com/asset/?id=6026568195";list=
"http://www.roblox.com/asset/?id=6026568229";alarm_add=
"http://www.roblox.com/asset/?id=6023426898";speaker_notes=
"http://www.roblox.com/asset/?id=6031266001";check_circle_outline=
"http://www.roblox.com/asset/?id=6023426909";extension=
"http://www.roblox.com/asset/?id=6023565892";pending=
"http://www.roblox.com/asset/?id=6031084745";pageview=
"http://www.roblox.com/asset/?id=6031216007";group_work=
"http://www.roblox.com/asset/?id=6023565910";zoom_in=
"http://www.roblox.com/asset/?id=6031075573";aspect_ratio=
"http://www.roblox.com/asset/?id=6022668895";code=
"http://www.roblox.com/asset/?id=6022668955";
["3d_rotation"]="http://www.roblox.com/asset/?id=6022668893";translate=
"http://www.roblox.com/asset/?id=6031225812";star_rate=
"http://www.roblox.com/asset/?id=6031265978";system_update_alt=
"http://www.roblox.com/asset/?id=6031251515";open_with=
"http://www.roblox.com/asset/?id=6026568265";build_circle=
"http://www.roblox.com/asset/?id=6023426952";toc=
"http://www.roblox.com/asset/?id=6031229341";settings_phone=
"http://www.roblox.com/asset/?id=6031289445";open_in_full=
"http://www.roblox.com/asset/?id=6026568245";history=
"http://www.roblox.com/asset/?id=6026568197";accessibility_new=
"http://www.roblox.com/asset/?id=6022668945";hourglass_disabled=
"http://www.roblox.com/asset/?id=6026568193";line_style=
"http://www.roblox.com/asset/?id=6026568276";account_circle=
"http://www.roblox.com/asset/?id=6022668898";settings_cell=
"http://www.roblox.com/asset/?id=6031280890";search_off=
"http://www.roblox.com/asset/?id=6031260783";shop=
"http://www.roblox.com/asset/?id=6031265983";anchor=
"http://www.roblox.com/asset/?id=6023426906";language=
"http://www.roblox.com/asset/?id=6026568213";settings_brightness=
"http://www.roblox.com/asset/?id=6031280902";restore_page=
"http://www.roblox.com/asset/?id=6031154877";chrome_reader_mode=
"http://www.roblox.com/asset/?id=6023426912";sync_alt=
"http://www.roblox.com/asset/?id=6031233840";book=
"http://www.roblox.com/asset/?id=6022860343";smart_button=
"http://www.roblox.com/asset/?id=6031265962";request_page=
"http://www.roblox.com/asset/?id=6031154873";lock_clock=
"http://www.roblox.com/asset/?id=6026568260";android=
"http://www.roblox.com/asset/?id=6022668966";outgoing_mail=
"http://www.roblox.com/asset/?id=6026568242";dynamic_form=
"http://www.roblox.com/asset/?id=6023426970";track_changes=
"http://www.roblox.com/asset/?id=6031225814";source=
"http://www.roblox.com/asset/?id=6031289451";thumb_down=
"http://www.roblox.com/asset/?id=6031229336";integration_instructions=
"http://www.roblox.com/asset/?id=6026568214";opacity=
"http://www.roblox.com/asset/?id=6026568295";perm_identity=
"http://www.roblox.com/asset/?id=6031215978";view_module=
"http://www.roblox.com/asset/?id=6031079152";perm_data_setting=
"http://www.roblox.com/asset/?id=6031215991";assignment_turned_in=
"http://www.roblox.com/asset/?id=6023426904";change_history=
"http://www.roblox.com/asset/?id=6023426914";thumb_down_off_alt=
"http://www.roblox.com/asset/?id=6031229354";text_rotation_angledown=
"http://www.roblox.com/asset/?id=6031251513";bookmark=
"http://www.roblox.com/asset/?id=6022852108";view_stream=
"http://www.roblox.com/asset/?id=6031079164";remove_done=
"http://www.roblox.com/asset/?id=6031086169";markunread_mailbox=
"http://www.roblox.com/asset/?id=6031082531";store=
"http://www.roblox.com/asset/?id=6031265968";text_rotation_angleup=
"http://www.roblox.com/asset/?id=6031229337";eco=
"http://www.roblox.com/asset/?id=6023426988";find_in_page=
"http://www.roblox.com/asset/?id=6023426986";api=
"http://www.roblox.com/asset/?id=6022668911";launch=
"http://www.roblox.com/asset/?id=6026568211";text_rotation_down=
"http://www.roblox.com/asset/?id=6031229334";flip_to_back=
"http://www.roblox.com/asset/?id=6023565896";contact_page=
"http://www.roblox.com/asset/?id=6022668881";preview=
"http://www.roblox.com/asset/?id=6031260793";restore=
"http://www.roblox.com/asset/?id=6031260800";favorite_border=
"http://www.roblox.com/asset/?id=6023565882";assignment_late=
"http://www.roblox.com/asset/?id=6022668880";youtube_searched_for=
"http://www.roblox.com/asset/?id=6031075934";hourglass_full=
"http://www.roblox.com/asset/?id=6026568190";timeline=
"http://www.roblox.com/asset/?id=6031229350";turned_in=
"http://www.roblox.com/asset/?id=6031225808";info=
"http://www.roblox.com/asset/?id=6026568227";restore_from_trash=
"http://www.roblox.com/asset/?id=6031154869";arrow_circle_down=
"http://www.roblox.com/asset/?id=6022668877";flaky=
"http://www.roblox.com/asset/?id=6031082523";alarm_on=
"http://www.roblox.com/asset/?id=6023426920";swap_vertical_circle=
"http://www.roblox.com/asset/?id=6031233839";open_in_new=
"http://www.roblox.com/asset/?id=6026568256";watch_later=
"http://www.roblox.com/asset/?id=6031075924";alarm_off=
"http://www.roblox.com/asset/?id=6023426901";maximize=
"http://www.roblox.com/asset/?id=6026568267";lock_outline=
"http://www.roblox.com/asset/?id=6031082533";outbond=
"http://www.roblox.com/asset/?id=6026568244";view_carousel=
"http://www.roblox.com/asset/?id=6031251507";published_with_changes=
"http://www.roblox.com/asset/?id=6031243328";verified_user=
"http://www.roblox.com/asset/?id=6031225819";drag_indicator=
"http://www.roblox.com/asset/?id=6023426962";lightbulb_outline=
"http://www.roblox.com/asset/?id=6026568254";segment=
"http://www.roblox.com/asset/?id=6031260773";assignment=
"http://www.roblox.com/asset/?id=6022668882";work_outline=
"http://www.roblox.com/asset/?id=6031075930";line_weight=
"http://www.roblox.com/asset/?id=6026568226";dangerous=
"http://www.roblox.com/asset/?id=6022668916";assessment=
"http://www.roblox.com/asset/?id=6022668897";view_day=
"http://www.roblox.com/asset/?id=6031079153";help_center=
"http://www.roblox.com/asset/?id=6026568192";logout=
"http://www.roblox.com/asset/?id=6031082522";event=
"http://www.roblox.com/asset/?id=6023426959";get_app=
"http://www.roblox.com/asset/?id=6023565889";tab=
"http://www.roblox.com/asset/?id=6031233851";label=
"http://www.roblox.com/asset/?id=6031082525";g_translate=
"http://www.roblox.com/asset/?id=6031082526";view_week=
"http://www.roblox.com/asset/?id=6031079154";view_in_ar=
"http://www.roblox.com/asset/?id=6031079158";card_travel=
"http://www.roblox.com/asset/?id=6023426925";lock_open=
"http://www.roblox.com/asset/?id=6026568220";voice_over_off=
"http://www.roblox.com/asset/?id=6031075927";app_blocking=
"http://www.roblox.com/asset/?id=6022668952";settings_ethernet=
"http://www.roblox.com/asset/?id=6031280883";supervised_user_circle=
"http://www.roblox.com/asset/?id=6031289449";done_all=
"http://www.roblox.com/asset/?id=6023426929";lightbulb=
"http://www.roblox.com/asset/?id=6026568247";find_replace=
"http://www.roblox.com/asset/?id=6023426979";bookmarks=
"http://www.roblox.com/asset/?id=6023426924";today=
"http://www.roblox.com/asset/?id=6031229352";class=
"http://www.roblox.com/asset/?id=6022668949";supervisor_account=
"http://www.roblox.com/asset/?id=6031251516";support=
"http://www.roblox.com/asset/?id=6031251532";done_outline=
"http://www.roblox.com/asset/?id=6023426936";reorder=
"http://www.roblox.com/asset/?id=6031154868";fact_check=
"http://www.roblox.com/asset/?id=6023426951";thumb_up=
"http://www.roblox.com/asset/?id=6031229347";assignment_returned=
"http://www.roblox.com/asset/?id=6023426899";card_giftcard=
"http://www.roblox.com/asset/?id=6023426978";trending_down=
"http://www.roblox.com/asset/?id=6031225811";settings_backup_restore=
"http://www.roblox.com/asset/?id=6031280886";settings_voice=
"http://www.roblox.com/asset/?id=6031265966";dns=
"http://www.roblox.com/asset/?id=6023426958";perm_scan_wifi=
"http://www.roblox.com/asset/?id=6031215985";plagiarism=
"http://www.roblox.com/asset/?id=6031243320";commute=
"http://www.roblox.com/asset/?id=6022668901";gif=
"http://www.roblox.com/asset/?id=6031082540";work=
"http://www.roblox.com/asset/?id=6031075939";picture_in_picture_alt=
"http://www.roblox.com/asset/?id=6031215979";query_builder=
"http://www.roblox.com/asset/?id=6031086183";label_off=
"http://www.roblox.com/asset/?id=6026568209";all_out=
"http://www.roblox.com/asset/?id=6022668876";article=
"http://www.roblox.com/asset/?id=6022668907";shopping_basket=
"http://www.roblox.com/asset/?id=6031265997";mark_as_unread=
"http://www.roblox.com/asset/?id=6026568223";work_off=
"http://www.roblox.com/asset/?id=6031075937";delete_outline=
"http://www.roblox.com/asset/?id=6022668962";account_box=
"http://www.roblox.com/asset/?id=6023426915";home_filled=
"rbxassetid://9080449299";lock=
"http://www.roblox.com/asset/?id=6026568224";perm_device_information=
"http://www.roblox.com/asset/?id=6031215996";add_task=
"http://www.roblox.com/asset/?id=6022668912";text_rotate_up=
"http://www.roblox.com/asset/?id=6031251526";swipe=
"http://www.roblox.com/asset/?id=6031233863";eject=
"http://www.roblox.com/asset/?id=6023426930";mediation=
"http://www.roblox.com/asset/?id=6026568249";label_important_outline=
"http://www.roblox.com/asset/?id=6026568199";settings_remote=
"http://www.roblox.com/asset/?id=6031289442";history_toggle_off=
"http://www.roblox.com/asset/?id=6026568196";invert_colors=
"http://www.roblox.com/asset/?id=6026568253";visibility_off=
"http://www.roblox.com/asset/?id=6031075929";addchart=
"http://www.roblox.com/asset/?id=6023426905";cancel_schedule_send=
"http://www.roblox.com/asset/?id=6022668963";loyalty=
"http://www.roblox.com/asset/?id=6026568237";speaker_notes_off=
"http://www.roblox.com/asset/?id=6031265965";online_prediction=
"http://www.roblox.com/asset/?id=6026568239";remove_shopping_cart=
"http://www.roblox.com/asset/?id=6031260778";text_rotate_vertical=
"http://www.roblox.com/asset/?id=6031251518";visibility=
"http://www.roblox.com/asset/?id=6031075931";add_to_drive=
"http://www.roblox.com/asset/?id=6022860335";accessible=
"http://www.roblox.com/asset/?id=6022668902";bookmark_border=
"http://www.roblox.com/asset/?id=6022860339";tour=
"http://www.roblox.com/asset/?id=6031229362";compare_arrows=
"http://www.roblox.com/asset/?id=6022668951";view_sidebar=
"http://www.roblox.com/asset/?id=6031079160";face=
"http://www.roblox.com/asset/?id=6023426944";wysiwyg=
"http://www.roblox.com/asset/?id=6031075938";camera_enhance=
"http://www.roblox.com/asset/?id=6023426935";perm_camera_mic=
"http://www.roblox.com/asset/?id=6031215983";model_training=
"http://www.roblox.com/asset/?id=6026568222";arrow_circle_up=
"http://www.roblox.com/asset/?id=6022668934";euro_symbol=
"http://www.roblox.com/asset/?id=6023426954";pending_actions=
"http://www.roblox.com/asset/?id=6031260777";not_accessible=
"http://www.roblox.com/asset/?id=6026568269";explore_off=
"http://www.roblox.com/asset/?id=6023426953";build=
"http://www.roblox.com/asset/?id=6023426938";backup=
"http://www.roblox.com/asset/?id=6023426911";settings_input_antenna=
"http://www.roblox.com/asset/?id=6031280891";disabled_by_default=
"http://www.roblox.com/asset/?id=6023426939";upgrade=
"http://www.roblox.com/asset/?id=6031225815";contactless=
"http://www.roblox.com/asset/?id=6022668886";trending_flat=
"http://www.roblox.com/asset/?id=6031225818";schedule=
"http://www.roblox.com/asset/?id=6031260808";offline_pin=
"http://www.roblox.com/asset/?id=6031084770";date_range=
"http://www.roblox.com/asset/?id=6022668894";flight_land=
"http://www.roblox.com/asset/?id=6023565897";view_headline=
"http://www.roblox.com/asset/?id=6031079151";cached=
"http://www.roblox.com/asset/?id=6023426921";unpublished=
"http://www.roblox.com/asset/?id=6031225817";outlet=
"http://www.roblox.com/asset/?id=6031084748";favorite=
"http://www.roblox.com/asset/?id=6023426974";vertical_split=
"http://www.roblox.com/asset/?id=6031225820";report_problem=
"http://www.roblox.com/asset/?id=6031086176";fingerprint=
"http://www.roblox.com/asset/?id=6023565895";important_devices=
"http://www.roblox.com/asset/?id=6026568202";outbox=
"http://www.roblox.com/asset/?id=6026568263";all_inbox=
"http://www.roblox.com/asset/?id=6022668909";label_important=
"http://www.roblox.com/asset/?id=6026568215";print=
"http://www.roblox.com/asset/?id=6031243324";settings_bluetooth=
"http://www.roblox.com/asset/?id=6031280905";power_settings_new=
"http://www.roblox.com/asset/?id=6031260781";zoom_out=
"http://www.roblox.com/asset/?id=6031075577";stars=
"http://www.roblox.com/asset/?id=6031265971";offline_bolt=
"http://www.roblox.com/asset/?id=6031084742";feedback=
"http://www.roblox.com/asset/?id=6023426957";accessibility=
"http://www.roblox.com/asset/?id=6022668887";announcement=
"http://www.roblox.com/asset/?id=6022668946";settings_input_hdmi=
"http://www.roblox.com/asset/?id=6031280970";leaderboard=
"http://www.roblox.com/asset/?id=6026568216";view_quilt=
"http://www.roblox.com/asset/?id=6031079155";note_add=
"http://www.roblox.com/asset/?id=6031084749";theaters=
"http://www.roblox.com/asset/?id=6031229335";alarm=
"http://www.roblox.com/asset/?id=6023426910";settings_input_composite=
"http://www.roblox.com/asset/?id=6031280896";grade=
"http://www.roblox.com/asset/?id=6026568189";tab_unselected=
"http://www.roblox.com/asset/?id=6031251505";swap_vert=
"http://www.roblox.com/asset/?id=6031233847";assignment_return=
"http://www.roblox.com/asset/?id=6023426931";highlight_alt=
"http://www.roblox.com/asset/?id=6023565913";shopping_bag=
"http://www.roblox.com/asset/?id=6031265970";contact_support=
"http://www.roblox.com/asset/?id=6022668879";flip_to_front=
"http://www.roblox.com/asset/?id=6023565894";touch_app=
"http://www.roblox.com/asset/?id=6031229361";room=
"http://www.roblox.com/asset/?id=6031154875";send_and_archive=
"http://www.roblox.com/asset/?id=6031280889";view_array=
"http://www.roblox.com/asset/?id=6031225842";settings_power=
"http://www.roblox.com/asset/?id=6031289446";admin_panel_settings=
"http://www.roblox.com/asset/?id=6022668961";open_in_browser=
"http://www.roblox.com/asset/?id=6026568266";card_membership=
"http://www.roblox.com/asset/?id=6023426942";rule=
"http://www.roblox.com/asset/?id=6031154859";schedule_send=
"http://www.roblox.com/asset/?id=6031154866";calendar_today=
"http://www.roblox.com/asset/?id=6022668917";info_outline=
"http://www.roblox.com/asset/?id=6026568210";description=
"http://www.roblox.com/asset/?id=6022668888";dashboard_customize=
"http://www.roblox.com/asset/?id=6022668899";rowing=
"http://www.roblox.com/asset/?id=6031154857";swap_horizontal_circle=
"http://www.roblox.com/asset/?id=6031233833";account_balance_wallet=
"http://www.roblox.com/asset/?id=6022668892";view_agenda=
"http://www.roblox.com/asset/?id=6031225831";shop_two=
"http://www.roblox.com/asset/?id=6031289461";done=
"http://www.roblox.com/asset/?id=6023426926";circle_notifications=
"http://www.roblox.com/asset/?id=6023426923";compress=
"http://www.roblox.com/asset/?id=6022668878";calendar_view_day=
"http://www.roblox.com/asset/?id=6023426946";thumbs_up_down=
"http://www.roblox.com/asset/?id=6031229373";account_balance=
"http://www.roblox.com/asset/?id=6022668900";play_for_work=
"http://www.roblox.com/asset/?id=6031260776";pets=
"http://www.roblox.com/asset/?id=6031260782";view_column=
"http://www.roblox.com/asset/?id=6031079172";search=
"http://www.roblox.com/asset/?id=6031154871";autorenew=
"http://www.roblox.com/asset/?id=6023565901";copyright=
"http://www.roblox.com/asset/?id=6023565898";privacy_tip=
"http://www.roblox.com/asset/?id=6031260784";arrow_right_alt=
"http://www.roblox.com/asset/?id=6022668890";delete=
"http://www.roblox.com/asset/?id=6022668885";nightlight_round=
"http://www.roblox.com/asset/?id=6031084743";batch_prediction=
"http://www.roblox.com/asset/?id=6022860334";shopping_cart=
"http://www.roblox.com/asset/?id=6031265976";login=
"http://www.roblox.com/asset/?id=6031082527";settings_input_svideo=
"http://www.roblox.com/asset/?id=6031289444";payment=
"http://www.roblox.com/asset/?id=6031084751";update=
"http://www.roblox.com/asset/?id=6031225810";text_rotation_none=
"http://www.roblox.com/asset/?id=6031229344";perm_contact_calendar=
"http://www.roblox.com/asset/?id=6031215990";explore=
"http://www.roblox.com/asset/?id=6023426941";delete_forever=
"http://www.roblox.com/asset/?id=6022668939";rounded_corner=
"http://www.roblox.com/asset/?id=6031154861";book_online=
"http://www.roblox.com/asset/?id=6022860332";quickreply=
"http://www.roblox.com/asset/?id=6031243319";bug_report=
"http://www.roblox.com/asset/?id=6022852107";subtitles_off=
"http://www.roblox.com/asset/?id=6031289466";close_fullscreen=
"http://www.roblox.com/asset/?id=6023426928";horizontal_split=
"http://www.roblox.com/asset/?id=6026568194";minimize=
"http://www.roblox.com/asset/?id=6026568240";filter_list_alt=
"http://www.roblox.com/asset/?id=6023426955";add_shopping_cart=
"http://www.roblox.com/asset/?id=6022668875";next_plan=
"http://www.roblox.com/asset/?id=6026568231";view_list=
"http://www.roblox.com/asset/?id=6031079156";receipt=
"http://www.roblox.com/asset/?id=6031086173";polymer=
"http://www.roblox.com/asset/?id=6031260785";spellcheck=
"http://www.roblox.com/asset/?id=6031289450";wifi_protected_setup=
"http://www.roblox.com/asset/?id=6031075926";label_outline=
"http://www.roblox.com/asset/?id=6026568207";highlight_off=
"http://www.roblox.com/asset/?id=6023565916";turned_in_not=
"http://www.roblox.com/asset/?id=6031225806";edit_off=
"http://www.roblox.com/asset/?id=6023426983";question_answer=
"http://www.roblox.com/asset/?id=6031086172";settings_overscan=
"http://www.roblox.com/asset/?id=6031289459";trending_up=
"http://www.roblox.com/asset/?id=6031225816";verified=
"http://www.roblox.com/asset/?id=6031225809";flight_takeoff=
"http://www.roblox.com/asset/?id=6023565891";grading=
"http://www.roblox.com/asset/?id=6026568191";dashboard=
"http://www.roblox.com/asset/?id=6022668883";expand=
"http://www.roblox.com/asset/?id=6022668891";backup_table=
"http://www.roblox.com/asset/?id=6022860338";analytics=
"http://www.roblox.com/asset/?id=6022668884";picture_in_picture=
"http://www.roblox.com/asset/?id=6031215994";settings=
"http://www.roblox.com/asset/?id=6031280882";accessible_forward=
"http://www.roblox.com/asset/?id=6022668906";pan_tool=
"http://www.roblox.com/asset/?id=6031084771";https=
"http://www.roblox.com/asset/?id=6026568200";filter_alt=
"http://www.roblox.com/asset/?id=6023426984";thumb_up_off_alt=
"http://www.roblox.com/asset/?id=6031229342";record_voice_over=
"http://www.roblox.com/asset/?id=6031243318";help_outline=
"http://www.roblox.com/asset/?id=6026568201";check_circle=
"http://www.roblox.com/asset/?id=6023426945";comment_bank=
"http://www.roblox.com/asset/?id=6023426937";perm_phone_msg=
"http://www.roblox.com/asset/?id=6031215986";settings_applications=
"http://www.roblox.com/asset/?id=6031280894";exit_to_app=
"http://www.roblox.com/asset/?id=6023426922";saved_search=
"http://www.roblox.com/asset/?id=6031154867";toll=
"http://www.roblox.com/asset/?id=6031229343";not_started=
"http://www.roblox.com/asset/?id=6026568232";subject=
"http://www.roblox.com/asset/?id=6031289452";redeem=
"http://www.roblox.com/asset/?id=6031086170";input=
"http://www.roblox.com/asset/?id=6026568225";settings_input_component=
"http://www.roblox.com/asset/?id=6031280884";assignment_ind=
"http://www.roblox.com/asset/?id=6022668935";swap_horiz=
"http://www.roblox.com/asset/?id=6031233841";fullscreen=
"http://www.roblox.com/asset/?id=6031094681";cancel=
"http://www.roblox.com/asset/?id=6031094677";subdirectory_arrow_left=
"http://www.roblox.com/asset/?id=6031104654";close=
"http://www.roblox.com/asset/?id=6031094678";arrow_back_ios=
"http://www.roblox.com/asset/?id=6031091003";east=
"http://www.roblox.com/asset/?id=6031094675";unfold_more=
"http://www.roblox.com/asset/?id=6031104644";south=
"http://www.roblox.com/asset/?id=6031104646";arrow_drop_up=
"http://www.roblox.com/asset/?id=6031090990";arrow_back=
"http://www.roblox.com/asset/?id=6031091000";arrow_downward=
"http://www.roblox.com/asset/?id=6031090991";west=
"http://www.roblox.com/asset/?id=6031104677";legend_toggle=
"http://www.roblox.com/asset/?id=6031097233";fullscreen_exit=
"http://www.roblox.com/asset/?id=6031094691";last_page=
"http://www.roblox.com/asset/?id=6031094686";switch_right=
"http://www.roblox.com/asset/?id=6031104649";check=
"http://www.roblox.com/asset/?id=6031094667";home_work=
"http://www.roblox.com/asset/?id=6031094683";north_east=
"http://www.roblox.com/asset/?id=6031097228";double_arrow=
"http://www.roblox.com/asset/?id=6031094674";more_vert=
"http://www.roblox.com/asset/?id=6031104648";chevron_left=
"http://www.roblox.com/asset/?id=6031094670";more_horiz=
"http://www.roblox.com/asset/?id=6031104650";unfold_less=
"http://www.roblox.com/asset/?id=6031104681";first_page=
"http://www.roblox.com/asset/?id=6031094682";payments=
"http://www.roblox.com/asset/?id=6031097227";arrow_right=
"http://www.roblox.com/asset/?id=6031090994";offline_share=
"http://www.roblox.com/asset/?id=6031097267";south_west=
"http://www.roblox.com/asset/?id=6031104652";expand_less=
"http://www.roblox.com/asset/?id=6031094679";south_east=
"http://www.roblox.com/asset/?id=6031104642";assistant_navigation=
"http://www.roblox.com/asset/?id=6031091006";apps=
"http://www.roblox.com/asset/?id=6031090999";arrow_upward=
"http://www.roblox.com/asset/?id=6031090997";app_settings_alt=
"http://www.roblox.com/asset/?id=6031090998";subdirectory_arrow_right=
"http://www.roblox.com/asset/?id=6031104647";north_west=
"http://www.roblox.com/asset/?id=6031104630";switch_left=
"http://www.roblox.com/asset/?id=6031104651";chevron_right=
"http://www.roblox.com/asset/?id=6031094680";arrow_forward=
"http://www.roblox.com/asset/?id=6031090995";arrow_forward_ios=
"http://www.roblox.com/asset/?id=6031091008";arrow_drop_down=
"http://www.roblox.com/asset/?id=6031091004";refresh=
"http://www.roblox.com/asset/?id=6031097226";pivot_table_chart=
"http://www.roblox.com/asset/?id=6031097234";expand_more=
"http://www.roblox.com/asset/?id=6031094687";campaign=
"http://www.roblox.com/asset/?id=6031094666";arrow_left=
"http://www.roblox.com/asset/?id=6031091002";arrow_drop_down_circle=
"http://www.roblox.com/asset/?id=6031091001";menu_open=
"http://www.roblox.com/asset/?id=6031097229";waterfall_chart=
"http://www.roblox.com/asset/?id=6031104632";assistant_direction=
"http://www.roblox.com/asset/?id=6031091005";menu=
"http://www.roblox.com/asset/?id=6031097225";personal_video=
"http://www.roblox.com/asset/?id=6034457070";power_off=
"http://www.roblox.com/asset/?id=6034457087";wifi_off=
"http://www.roblox.com/asset/?id=6034461625";adb=
"http://www.roblox.com/asset/?id=6034418515";airline_seat_recline_normal=
"http://www.roblox.com/asset/?id=6034418512";sync_problem=
"http://www.roblox.com/asset/?id=6034452653";network_check=
"http://www.roblox.com/asset/?id=6034461631";event_busy=
"http://www.roblox.com/asset/?id=6034439634";airline_seat_flat=
"http://www.roblox.com/asset/?id=6034418511";disc_full=
"http://www.roblox.com/asset/?id=6034418518";sd_card=
"http://www.roblox.com/asset/?id=6034457089";time_to_leave=
"http://www.roblox.com/asset/?id=6034452660";phone_bluetooth_speaker=
"http://www.roblox.com/asset/?id=6034457057";phone_paused=
"http://www.roblox.com/asset/?id=6034457066";phone_locked=
"http://www.roblox.com/asset/?id=6034457058";more=
"http://www.roblox.com/asset/?id=6034461627";add_call=
"http://www.roblox.com/asset/?id=6034418524";account_tree=
"http://www.roblox.com/asset/?id=6034418507";do_not_disturb_on=
"http://www.roblox.com/asset/?id=6034439649";event_note=
"http://www.roblox.com/asset/?id=6034439637";sync_disabled=
"http://www.roblox.com/asset/?id=6034452649";mms=
"http://www.roblox.com/asset/?id=6034461621";airline_seat_flat_angled=
"http://www.roblox.com/asset/?id=6034418513";bluetooth_audio=
"http://www.roblox.com/asset/?id=6034418522";vibration=
"http://www.roblox.com/asset/?id=6034452651";system_update=
"http://www.roblox.com/asset/?id=6034452663";enhanced_encryption=
"http://www.roblox.com/asset/?id=6034439652";wc=
"http://www.roblox.com/asset/?id=6034452643";live_tv=
"http://www.roblox.com/asset/?id=6034439648";folder_special=
"http://www.roblox.com/asset/?id=6034439639";phone_missed=
"http://www.roblox.com/asset/?id=6034457056";airline_seat_recline_extra=
"http://www.roblox.com/asset/?id=6034418528";sms=
"http://www.roblox.com/asset/?id=6034452645";tap_and_play=
"http://www.roblox.com/asset/?id=6034452650";confirmation_number=
"http://www.roblox.com/asset/?id=6034418519";event_available=
"http://www.roblox.com/asset/?id=6034439643";sms_failed=
"http://www.roblox.com/asset/?id=6034452676";do_not_disturb_alt=
"http://www.roblox.com/asset/?id=6034461619";do_not_disturb=
"http://www.roblox.com/asset/?id=6034439645";ondemand_video=
"http://www.roblox.com/asset/?id=6034457065";no_encryption=
"http://www.roblox.com/asset/?id=6034457059";airline_seat_legroom_extra=
"http://www.roblox.com/asset/?id=6034418508";tv_off=
"http://www.roblox.com/asset/?id=6034452646";sim_card_alert=
"http://www.roblox.com/asset/?id=6034452641";airline_seat_legroom_normal=
"http://www.roblox.com/asset/?id=6034418532";wifi=
"http://www.roblox.com/asset/?id=6034461626";do_not_disturb_off=
"http://www.roblox.com/asset/?id=6034439642";imagesearch_roller=
"http://www.roblox.com/asset/?id=6034439635";power=
"http://www.roblox.com/asset/?id=6034457105";airline_seat_legroom_reduced=
"http://www.roblox.com/asset/?id=6034418520";phone_in_talk=
"http://www.roblox.com/asset/?id=6034457067";airline_seat_individual_suite=
"http://www.roblox.com/asset/?id=6034418514";priority_high=
"http://www.roblox.com/asset/?id=6034457092";phone_callback=
"http://www.roblox.com/asset/?id=6034457104";phone_forwarded=
"http://www.roblox.com/asset/?id=6034457106";sync=
"http://www.roblox.com/asset/?id=6034452662";vpn_lock=
"http://www.roblox.com/asset/?id=6034452648";support_agent=
"http://www.roblox.com/asset/?id=6034452656";network_locked=
"http://www.roblox.com/asset/?id=6034457064";directions_off=
"http://www.roblox.com/asset/?id=6034418517";drive_eta=
"http://www.roblox.com/asset/?id=6034464371";sensor_window=
"http://www.roblox.com/asset/?id=6031067242";sensor_door=
"http://www.roblox.com/asset/?id=6031067241";keyboard_return=
"http://www.roblox.com/asset/?id=6034818370";monitor=
"http://www.roblox.com/asset/?id=6034837803";device_hub=
"http://www.roblox.com/asset/?id=6034789877";keyboard=
"http://www.roblox.com/asset/?id=6034818398";keyboard_voice=
"http://www.roblox.com/asset/?id=6034818360";cast=
"http://www.roblox.com/asset/?id=6034789876";developer_board=
"http://www.roblox.com/asset/?id=6034789883";tablet=
"http://www.roblox.com/asset/?id=6034848733";keyboard_hide=
"http://www.roblox.com/asset/?id=6034818386";dock=
"http://www.roblox.com/asset/?id=6034789888";phonelink=
"http://www.roblox.com/asset/?id=6034837801";device_unknown=
"http://www.roblox.com/asset/?id=6034789884";speaker_group=
"http://www.roblox.com/asset/?id=6034848732";desktop_mac=
"http://www.roblox.com/asset/?id=6034789898";point_of_sale=
"http://www.roblox.com/asset/?id=6034837798";memory=
"http://www.roblox.com/asset/?id=6034837807";keyboard_tab=
"http://www.roblox.com/asset/?id=6034818363";router=
"http://www.roblox.com/asset/?id=6034837806";sim_card=
"http://www.roblox.com/asset/?id=6034837800";headset=
"http://www.roblox.com/asset/?id=6034789880";gamepad=
"http://www.roblox.com/asset/?id=6034789879";speaker=
"http://www.roblox.com/asset/?id=6034848746";devices_other=
"http://www.roblox.com/asset/?id=6034789873";laptop=
"http://www.roblox.com/asset/?id=6034818367";scanner=
"http://www.roblox.com/asset/?id=6034837799";tv=
"http://www.roblox.com/asset/?id=6034848740";headset_mic=
"http://www.roblox.com/asset/?id=6034818383";browser_not_supported=
"http://www.roblox.com/asset/?id=6034789875";computer=
"http://www.roblox.com/asset/?id=6034789874";connected_tv=
"http://www.roblox.com/asset/?id=6034789870";phonelink_off=
"http://www.roblox.com/asset/?id=6034837804";headset_off=
"http://www.roblox.com/asset/?id=6034818402";cast_connected=
"http://www.roblox.com/asset/?id=6034789895";watch=
"http://www.roblox.com/asset/?id=6034848747";keyboard_arrow_up=
"http://www.roblox.com/asset/?id=6034818379";keyboard_backspace=
"http://www.roblox.com/asset/?id=6034818381";laptop_chromebook=
"http://www.roblox.com/asset/?id=6034818364";phone_iphone=
"http://www.roblox.com/asset/?id=6034837811";smartphone=
"http://www.roblox.com/asset/?id=6034848731";power_input=
"http://www.roblox.com/asset/?id=6034837794";videogame_asset=
"http://www.roblox.com/asset/?id=6034848748";desktop_windows=
"http://www.roblox.com/asset/?id=6034789893";keyboard_arrow_down=
"http://www.roblox.com/asset/?id=6034818372";laptop_mac=
"http://www.roblox.com/asset/?id=6034837808";laptop_windows=
"http://www.roblox.com/asset/?id=6034837796";keyboard_arrow_right=
"http://www.roblox.com/asset/?id=6034818365";cast_for_education=
"http://www.roblox.com/asset/?id=6034789872";keyboard_capslock=
"http://www.roblox.com/asset/?id=6034818403";toys=
"http://www.roblox.com/asset/?id=6034848752";tablet_android=
"http://www.roblox.com/asset/?id=6034848734";mouse=
"http://www.roblox.com/asset/?id=6034837797";phone_android=
"http://www.roblox.com/asset/?id=6034837793";keyboard_arrow_left=
"http://www.roblox.com/asset/?id=6034818375";security=
"http://www.roblox.com/asset/?id=6034837802";dry_cleaning=
"http://www.roblox.com/asset/?id=6034754456";bakery_dining=
"http://www.roblox.com/asset/?id=6034767610";place=
"http://www.roblox.com/asset/?id=6034503372";run_circle=
"http://www.roblox.com/asset/?id=6034503367";local_post_office=
"http://www.roblox.com/asset/?id=6034513883";takeout_dining=
"http://www.roblox.com/asset/?id=6034467808";nightlife=
"http://www.roblox.com/asset/?id=6034510003";design_services=
"http://www.roblox.com/asset/?id=6034754453";celebration=
"http://www.roblox.com/asset/?id=6034767613";near_me_disabled=
"http://www.roblox.com/asset/?id=6034509988";add_location_alt=
"http://www.roblox.com/asset/?id=6034483678";directions_run=
"http://www.roblox.com/asset/?id=6034754445";local_fire_department=
"http://www.roblox.com/asset/?id=6034684949";add_road=
"http://www.roblox.com/asset/?id=6034483677";my_location=
"http://www.roblox.com/asset/?id=6034509987";dinner_dining=
"http://www.roblox.com/asset/?id=6034754457";local_airport=
"http://www.roblox.com/asset/?id=6034687951";zoom_out_map=
"http://www.roblox.com/asset/?id=6035229856";pin_drop=
"http://www.roblox.com/asset/?id=6034470807";subway=
"http://www.roblox.com/asset/?id=6034467790";electric_moped=
"http://www.roblox.com/asset/?id=6034744027";restaurant_menu=
"http://www.roblox.com/asset/?id=6034503378";local_gas_station=
"http://www.roblox.com/asset/?id=6034684935";local_cafe=
"http://www.roblox.com/asset/?id=6034687954";theater_comedy=
"http://www.roblox.com/asset/?id=6034467796";directions_bus=
"http://www.roblox.com/asset/?id=6034754434";hail=
"http://www.roblox.com/asset/?id=6034744033";satellite=
"http://www.roblox.com/asset/?id=6034503370";local_phone=
"http://www.roblox.com/asset/?id=6034513884";electric_bike=
"http://www.roblox.com/asset/?id=6034744032";local_see=
"http://www.roblox.com/asset/?id=6034513887";transit_enterexit=
"http://www.roblox.com/asset/?id=6034467805";local_convenience_store=
"http://www.roblox.com/asset/?id=6034687956";local_offer=
"http://www.roblox.com/asset/?id=6034513891";electric_car=
"http://www.roblox.com/asset/?id=6034744029";beenhere=
"http://www.roblox.com/asset/?id=6034483675";miscellaneous_services=
"http://www.roblox.com/asset/?id=6034509993";maps_ugc=
"http://www.roblox.com/asset/?id=6034509992";moped=
"http://www.roblox.com/asset/?id=6034509999";medical_services=
"http://www.roblox.com/asset/?id=6034510001";money=
"http://www.roblox.com/asset/?id=6034509997";transfer_within_a_station=
"http://www.roblox.com/asset/?id=6034467809";electrical_services=
"http://www.roblox.com/asset/?id=6034744038";museum=
"http://www.roblox.com/asset/?id=6034510005";add_location=
"http://www.roblox.com/asset/?id=6034483672";layers=
"http://www.roblox.com/asset/?id=6034687957";handyman=
"http://www.roblox.com/asset/?id=6034744057";local_pharmacy=
"http://www.roblox.com/asset/?id=6034513903";electric_rickshaw=
"http://www.roblox.com/asset/?id=6034744043";alt_route=
"http://www.roblox.com/asset/?id=6034483670";no_transfer=
"http://www.roblox.com/asset/?id=6034503363";pedal_bike=
"http://www.roblox.com/asset/?id=6034503374";directions_transit=
"http://www.roblox.com/asset/?id=6034754436";railway_alert=
"http://www.roblox.com/asset/?id=6034470823";local_police=
"http://www.roblox.com/asset/?id=6034513895";directions_car=
"http://www.roblox.com/asset/?id=6034754441";category=
"http://www.roblox.com/asset/?id=6034767621";attractions=
"http://www.roblox.com/asset/?id=6034767620";person_pin_circle=
"http://www.roblox.com/asset/?id=6034503375";cleaning_services=
"http://www.roblox.com/asset/?id=6034767619";terrain=
"http://www.roblox.com/asset/?id=6034467794";no_meals=
"http://www.roblox.com/asset/?id=6034510024";train=
"http://www.roblox.com/asset/?id=6034467803";delivery_dining=
"http://www.roblox.com/asset/?id=6034767644";pest_control=
"http://www.roblox.com/asset/?id=6034470809";directions=
"http://www.roblox.com/asset/?id=6034754449";atm=
"http://www.roblox.com/asset/?id=6034767614";rate_review=
"http://www.roblox.com/asset/?id=6034503385";local_bar=
"http://www.roblox.com/asset/?id=6034687950";local_drink=
"http://www.roblox.com/asset/?id=6034687965";directions_railway=
"http://www.roblox.com/asset/?id=6034754433";person_pin=
"http://www.roblox.com/asset/?id=6034503364";ev_station=
"http://www.roblox.com/asset/?id=6034744037";home_repair_service=
"http://www.roblox.com/asset/?id=6034744064";bus_alert=
"http://www.roblox.com/asset/?id=6034767618";agriculture=
"http://www.roblox.com/asset/?id=6034483674";volunteer_activism=
"http://www.roblox.com/asset/?id=6034467799";breakfast_dining=
"http://www.roblox.com/asset/?id=6034483671";layers_clear=
"http://www.roblox.com/asset/?id=6034687975";plumbing=
"http://www.roblox.com/asset/?id=6034470800";taxi_alert=
"http://www.roblox.com/asset/?id=6034467792";add_business=
"http://www.roblox.com/asset/?id=6034483666";badge=
"http://www.roblox.com/asset/?id=6034767607";edit_attributes=
"http://www.roblox.com/asset/?id=6034754443";directions_walk=
"http://www.roblox.com/asset/?id=6034754448";local_play=
"http://www.roblox.com/asset/?id=6034513889";bike_scooter=
"http://www.roblox.com/asset/?id=6034483669";two_wheeler=
"http://www.roblox.com/asset/?id=6034467795";local_florist=
"http://www.roblox.com/asset/?id=6034684940";local_hotel=
"http://www.roblox.com/asset/?id=6034684939";no_meals_ouline=
"http://www.roblox.com/asset/?id=6034510025";festival=
"http://www.roblox.com/asset/?id=6034744031";local_shipping=
"http://www.roblox.com/asset/?id=6034684926";directions_boat=
"http://www.roblox.com/asset/?id=6034754442";wrong_location=
"http://www.roblox.com/asset/?id=6034467801";restaurant=
"http://www.roblox.com/asset/?id=6034503366";directions_subway=
"http://www.roblox.com/asset/?id=6034754440";not_listed_location=
"http://www.roblox.com/asset/?id=6034503380";electric_scooter=
"http://www.roblox.com/asset/?id=6034744041";ramen_dining=
"http://www.roblox.com/asset/?id=6034503377";edit_road=
"http://www.roblox.com/asset/?id=6034744035";local_printshop=
"http://www.roblox.com/asset/?id=6034513897";map=
"http://www.roblox.com/asset/?id=6034684930";car_rental=
"http://www.roblox.com/asset/?id=6034767641";multiple_stop=
"http://www.roblox.com/asset/?id=6034510026";brunch_dining=
"http://www.roblox.com/asset/?id=6034767611";local_laundry_service=
"http://www.roblox.com/asset/?id=6034684943";set_meal=
"http://www.roblox.com/asset/?id=6034503368";local_car_wash=
"http://www.roblox.com/asset/?id=6034687976";pest_control_rodent=
"http://www.roblox.com/asset/?id=6034470803";local_pizza=
"http://www.roblox.com/asset/?id=6034513885";local_grocery_store=
"http://www.roblox.com/asset/?id=6034684933";traffic=
"http://www.roblox.com/asset/?id=6034467797";departure_board=
"http://www.roblox.com/asset/?id=6034767615";icecream=
"http://www.roblox.com/asset/?id=6034687967";navigation=
"http://www.roblox.com/asset/?id=6034509984";near_me=
"http://www.roblox.com/asset/?id=6034509996";fastfood=
"http://www.roblox.com/asset/?id=6034744034";local_library=
"http://www.roblox.com/asset/?id=6034684931";local_activity=
"http://www.roblox.com/asset/?id=6034687955";local_hospital=
"http://www.roblox.com/asset/?id=6034684956";menu_book=
"http://www.roblox.com/asset/?id=6034509994";directions_bike=
"http://www.roblox.com/asset/?id=6034754459";store_mall_directory=
"http://www.roblox.com/asset/?id=6034470811";trip_origin=
"http://www.roblox.com/asset/?id=6034467804";tram=
"http://www.roblox.com/asset/?id=6034467806";edit_location=
"http://www.roblox.com/asset/?id=6034754439";streetview=
"http://www.roblox.com/asset/?id=6034470805";hvac=
"http://www.roblox.com/asset/?id=6034687960";lunch_dining=
"http://www.roblox.com/asset/?id=6034684928";car_repair=
"http://www.roblox.com/asset/?id=6034767617";compass_calibration=
"http://www.roblox.com/asset/?id=6034767623";
["360"]="http://www.roblox.com/asset/?id=6034767608";flight=
"http://www.roblox.com/asset/?id=6034744030";local_mall=
"http://www.roblox.com/asset/?id=6034684934";hotel=
"http://www.roblox.com/asset/?id=6034687977";local_parking=
"http://www.roblox.com/asset/?id=6034513893";hardware=
"http://www.roblox.com/asset/?id=6034744036";local_dining=
"http://www.roblox.com/asset/?id=6034687963";park=
"http://www.roblox.com/asset/?id=6034503369";location_pin=
"http://www.roblox.com/asset/?id=6034684937";local_movies=
"http://www.roblox.com/asset/?id=6034684936";local_atm=
"http://www.roblox.com/asset/?id=6034687953";local_taxi=
"http://www.roblox.com/asset/?id=6034684927";brightness_low=
"http://www.roblox.com/asset/?id=6034989542";screen_lock_landscape=
"http://www.roblox.com/asset/?id=6034996700";graphic_eq=
"http://www.roblox.com/asset/?id=6034989551";screen_lock_rotation=
"http://www.roblox.com/asset/?id=6034996710";signal_cellular_4_bar=
"http://www.roblox.com/asset/?id=6035030076";airplanemode_inactive=
"http://www.roblox.com/asset/?id=6034983848";signal_wifi_0_bar=
"http://www.roblox.com/asset/?id=6035030067";battery_full=
"http://www.roblox.com/asset/?id=6034983854";gps_fixed=
"http://www.roblox.com/asset/?id=6034989550";brightness_high=
"http://www.roblox.com/asset/?id=6034989541";ad_units=
"http://www.roblox.com/asset/?id=6034983845";signal_cellular_alt=
"http://www.roblox.com/asset/?id=6035030079";bluetooth_connected=
"http://www.roblox.com/asset/?id=6034983855";wifi_tethering=
"http://www.roblox.com/asset/?id=6035039430";dvr=
"http://www.roblox.com/asset/?id=6034989561";screen_search_desktop=
"http://www.roblox.com/asset/?id=6034996711";network_wifi=
"http://www.roblox.com/asset/?id=6034996712";access_alarms=
"http://www.roblox.com/asset/?id=6034983853";nfc=
"http://www.roblox.com/asset/?id=6034996698";location_disabled=
"http://www.roblox.com/asset/?id=6034996694";signal_wifi_4_bar=
"http://www.roblox.com/asset/?id=6035030077";access_time=
"http://www.roblox.com/asset/?id=6034983856";mobile_off=
"http://www.roblox.com/asset/?id=6034996702";battery_unknown=
"http://www.roblox.com/asset/?id=6034983842";signal_cellular_null=
"http://www.roblox.com/asset/?id=6035030075";bluetooth_disabled=
"http://www.roblox.com/asset/?id=6034989562";developer_mode=
"http://www.roblox.com/asset/?id=6034989549";network_cell=
"http://www.roblox.com/asset/?id=6034996709";sd_storage=
"http://www.roblox.com/asset/?id=6034996719";signal_cellular_no_sim=
"http://www.roblox.com/asset/?id=6035030078";devices=
"http://www.roblox.com/asset/?id=6034989540";screen_rotation=
"http://www.roblox.com/asset/?id=6034996701";device_thermostat=
"http://www.roblox.com/asset/?id=6034989544";signal_wifi_off=
"http://www.roblox.com/asset/?id=6035030074";widgets=
"http://www.roblox.com/asset/?id=6035039429";bluetooth=
"http://www.roblox.com/asset/?id=6034983880";battery_charging_full=
"http://www.roblox.com/asset/?id=6034983849";mobile_friendly=
"http://www.roblox.com/asset/?id=6034996699";signal_cellular_0_bar=
"http://www.roblox.com/asset/?id=6035030072";storage=
"http://www.roblox.com/asset/?id=6035030083";send_to_mobile=
"http://www.roblox.com/asset/?id=6034996697";location_searching=
"http://www.roblox.com/asset/?id=6034996695";brightness_auto=
"http://www.roblox.com/asset/?id=6034989545";wifi_lock=
"http://www.roblox.com/asset/?id=6035039428";gps_not_fixed=
"http://www.roblox.com/asset/?id=6034989547";access_alarm=
"http://www.roblox.com/asset/?id=6034983844";battery_alert=
"http://www.roblox.com/asset/?id=6034983843";signal_cellular_off=
"http://www.roblox.com/asset/?id=6035030084";signal_cellular_connected_no_internet_4=
"http://www.roblox.com/asset/?id=6035229858";gps_off=
"http://www.roblox.com/asset/?id=6034989548";add_alarm=
"http://www.roblox.com/asset/?id=6034983850";brightness_medium=
"http://www.roblox.com/asset/?id=6034989543";usb=
"http://www.roblox.com/asset/?id=6035030080";airplanemode_active=
"http://www.roblox.com/asset/?id=6034983864";reset_tv=
"http://www.roblox.com/asset/?id=6034996696";wallpaper=
"http://www.roblox.com/asset/?id=6035030102";settings_system_daydream=
"http://www.roblox.com/asset/?id=6035030081";bluetooth_searching=
"http://www.roblox.com/asset/?id=6034989553";add_to_home_screen=
"http://www.roblox.com/asset/?id=6034983858";screen_lock_portrait=
"http://www.roblox.com/asset/?id=6034996706";data_usage=
"http://www.roblox.com/asset/?id=6034989568";_auto_delete=
"http://www.roblox.com/asset/?id=6031071068";_error=
"http://www.roblox.com/asset/?id=6031071057";_notification_important=
"http://www.roblox.com/asset/?id=6031071056";_add_alert=
"http://www.roblox.com/asset/?id=6031071067";_warning=
"http://www.roblox.com/asset/?id=6031071053";_error_outline=
"http://www.roblox.com/asset/?id=6031071050";check_box_outline_blank=
"http://www.roblox.com/asset/?id=6031068420";toggle_off=
"http://www.roblox.com/asset/?id=6031068429";indeterminate_check_box=
"http://www.roblox.com/asset/?id=6031068445";radio_button_checked=
"http://www.roblox.com/asset/?id=6031068426";toggle_on=
"http://www.roblox.com/asset/?id=6031068430";check_box=
"http://www.roblox.com/asset/?id=6031068421";radio_button_unchecked=
"http://www.roblox.com/asset/?id=6031068433";star=
"http://www.roblox.com/asset/?id=6031068423";star_border=
"http://www.roblox.com/asset/?id=6031068425";star_half=
"http://www.roblox.com/asset/?id=6031068427";star_outline=
"http://www.roblox.com/asset/?id=6031068428";multiline_chart=
"http://www.roblox.com/asset/?id=6034941721";pie_chart=
"http://www.roblox.com/asset/?id=6034973076";format_line_spacing=
"http://www.roblox.com/asset/?id=6034910905";format_align_left=
"http://www.roblox.com/asset/?id=6034900727";linear_scale=
"http://www.roblox.com/asset/?id=6034941707";insert_photo=
"http://www.roblox.com/asset/?id=6034941703";scatter_plot=
"http://www.roblox.com/asset/?id=6034973094";post_add=
"http://www.roblox.com/asset/?id=6034973083";format_textdirection_r_to_l=
"http://www.roblox.com/asset/?id=6034925623";format_size=
"http://www.roblox.com/asset/?id=6034910908";format_color_fill=
"http://www.roblox.com/asset/?id=6034910903";format_paint=
"http://www.roblox.com/asset/?id=6034925618";format_underlined=
"http://www.roblox.com/asset/?id=6034925627";format_shapes=
"http://www.roblox.com/asset/?id=6034910909";title=
"http://www.roblox.com/asset/?id=6034934042";highlight=
"http://www.roblox.com/asset/?id=6034925617";bar_chart=
"http://www.roblox.com/asset/?id=6034898096";format_indent_increase=
"http://www.roblox.com/asset/?id=6034900724";merge_type=
"http://www.roblox.com/asset/?id=6034941705";bubble_chart=
"http://www.roblox.com/asset/?id=6034925612";publish=
"http://www.roblox.com/asset/?id=6034973085";format_indent_decrease=
"http://www.roblox.com/asset/?id=6034900733";margin=
"http://www.roblox.com/asset/?id=6034941701";table_rows=
"http://www.roblox.com/asset/?id=6034934025";stacked_line_chart=
"http://www.roblox.com/asset/?id=6034934039";border_clear=
"http://www.roblox.com/asset/?id=6034898135";border_color=
"http://www.roblox.com/asset/?id=6034898100";border_inner=
"http://www.roblox.com/asset/?id=6034898131";insert_chart=
"http://www.roblox.com/asset/?id=6034925628";border_top=
"http://www.roblox.com/asset/?id=6034900726";padding=
"http://www.roblox.com/asset/?id=6034973078";border_vertical=
"http://www.roblox.com/asset/?id=6034900725";score=
"http://www.roblox.com/asset/?id=6034934041";border_right=
"http://www.roblox.com/asset/?id=6034898120";add_chart=
"http://www.roblox.com/asset/?id=6034898093";space_bar=
"http://www.roblox.com/asset/?id=6034934037";border_outer=
"http://www.roblox.com/asset/?id=6034898104";mode_comment=
"http://www.roblox.com/asset/?id=6034941700";attach_money=
"http://www.roblox.com/asset/?id=6034898098";drag_handle=
"http://www.roblox.com/asset/?id=6034910907";format_align_right=
"http://www.roblox.com/asset/?id=6034900723";pie_chart_outlined=
"http://www.roblox.com/asset/?id=6034973077";horizontal_rule=
"http://www.roblox.com/asset/?id=6034925610";border_all=
"http://www.roblox.com/asset/?id=6034898101";border_style=
"http://www.roblox.com/asset/?id=6034898097";insert_comment=
"http://www.roblox.com/asset/?id=6034925609";vertical_align_top=
"http://www.roblox.com/asset/?id=6034973080";vertical_align_center=
"http://www.roblox.com/asset/?id=6034934051";format_color_text=
"http://www.roblox.com/asset/?id=6034910910";format_quote=
"http://www.roblox.com/asset/?id=6034925629";height=
"http://www.roblox.com/asset/?id=6034925613";add_comment=
"http://www.roblox.com/asset/?id=6034898128";format_strikethrough=
"http://www.roblox.com/asset/?id=6034910904";strikethrough_s=
"http://www.roblox.com/asset/?id=6034934030";border_left=
"http://www.roblox.com/asset/?id=6034898099";format_list_bulleted=
"http://www.roblox.com/asset/?id=6034925620";format_italic=
"http://www.roblox.com/asset/?id=6034910912";format_list_numbered=
"http://www.roblox.com/asset/?id=6034925622";attach_file=
"http://www.roblox.com/asset/?id=6034898102";wrap_text=
"http://www.roblox.com/asset/?id=6034973118";insert_invitation=
"http://www.roblox.com/asset/?id=6034973091";format_list_numbered_rtl=
"http://www.roblox.com/asset/?id=6034910906";border_horizontal=
"http://www.roblox.com/asset/?id=6034898105";format_align_center=
"http://www.roblox.com/asset/?id=6034900718";format_textdirection_l_to_r=
"http://www.roblox.com/asset/?id=6034925619";show_chart=
"http://www.roblox.com/asset/?id=6034934032";insert_chart_outlined=
"http://www.roblox.com/asset/?id=6034925606";vertical_align_bottom=
"http://www.roblox.com/asset/?id=6034934023";subscript=
"http://www.roblox.com/asset/?id=6034934059";format_align_justify=
"http://www.roblox.com/asset/?id=6034900721";format_clear=
"http://www.roblox.com/asset/?id=6034910902";notes=
"http://www.roblox.com/asset/?id=6034973084";insert_drive_file=
"http://www.roblox.com/asset/?id=6034941697";functions=
"http://www.roblox.com/asset/?id=6034925614";insert_emoticon=
"http://www.roblox.com/asset/?id=6034973079";insert_link=
"http://www.roblox.com/asset/?id=6034973074";format_color_reset=
"http://www.roblox.com/asset/?id=6034900743";monetization_on=
"http://www.roblox.com/asset/?id=6034973115";short_text=
"http://www.roblox.com/asset/?id=6034934035";mode_edit=
"http://www.roblox.com/asset/?id=6034941708";superscript=
"http://www.roblox.com/asset/?id=6034934034";table_chart=
"http://www.roblox.com/asset/?id=6034973081";format_bold=
"http://www.roblox.com/asset/?id=6034900732";money_off=
"http://www.roblox.com/asset/?id=6034973088";border_bottom=
"http://www.roblox.com/asset/?id=6034898094";text_fields=
"http://www.roblox.com/asset/?id=6034934040";note=
"http://www.roblox.com/asset/?id=6026663734";shuffle=
"http://www.roblox.com/asset/?id=6026667003";library_books=
"http://www.roblox.com/asset/?id=6026660085";library_music=
"http://www.roblox.com/asset/?id=6026660075";surround_sound=
"http://www.roblox.com/asset/?id=6026671209";forward_30=
"http://www.roblox.com/asset/?id=6026660088";music_video=
"http://www.roblox.com/asset/?id=6026663704";videocam_off=
"http://www.roblox.com/asset/?id=6026671212";control_camera=
"http://www.roblox.com/asset/?id=6026647916";explicit=
"http://www.roblox.com/asset/?id=6026647913";
["3k_plus"]="http://www.roblox.com/asset/?id=6026681598";fiber_pin=
"http://www.roblox.com/asset/?id=6026660064";skip_previous=
"http://www.roblox.com/asset/?id=6026667011";pause_circle_filled=
"http://www.roblox.com/asset/?id=6026663718";video_settings=
"http://www.roblox.com/asset/?id=6026671211";movie=
"http://www.roblox.com/asset/?id=6026660081";add_to_queue=
"http://www.roblox.com/asset/?id=6026647903";
["6k"]="http://www.roblox.com/asset/?id=6026681579";web_asset=
"http://www.roblox.com/asset/?id=6026671239";play_circle_outline=
"http://www.roblox.com/asset/?id=6026663726";volume_off=
"http://www.roblox.com/asset/?id=6026671224";mic_off=
"http://www.roblox.com/asset/?id=6026660076";featured_play_list=
"http://www.roblox.com/asset/?id=6026647932";pause_circle_outline=
"http://www.roblox.com/asset/?id=6026663701";slow_motion_video=
"http://www.roblox.com/asset/?id=6026681583";
["7k"]="http://www.roblox.com/asset/?id=6026681584";playlist_add=
"http://www.roblox.com/asset/?id=6026663728";fiber_smart_record=
"http://www.roblox.com/asset/?id=6026660080";
["8k"]="http://www.roblox.com/asset/?id=6026643014";hd=
"http://www.roblox.com/asset/?id=6026660065";repeat_one_on=
"http://www.roblox.com/asset/?id=6026666992";recent_actors=
"http://www.roblox.com/asset/?id=6026663773";fiber_new=
"http://www.roblox.com/asset/?id=6026647930";fiber_dvr=
"http://www.roblox.com/asset/?id=6026647912";hearing_disabled=
"http://www.roblox.com/asset/?id=6026660068";forward_10=
"http://www.roblox.com/asset/?id=6026660062";
["4k_plus"]="http://www.roblox.com/asset/?id=6026643005";repeat_one=
"http://www.roblox.com/asset/?id=6026681590";equalizer=
"http://www.roblox.com/asset/?id=6026647906";stop=
"http://www.roblox.com/asset/?id=6026681576";
["2k"]="http://www.roblox.com/asset/?id=6026643032";playlist_add_check=
"http://www.roblox.com/asset/?id=6026663727";not_interested=
"http://www.roblox.com/asset/?id=6026663743";videocam=
"http://www.roblox.com/asset/?id=6026671213";sort_by_alpha=
"http://www.roblox.com/asset/?id=6026667009";library_add=
"http://www.roblox.com/asset/?id=6026660063";stop_circle=
"http://www.roblox.com/asset/?id=6026681577";pause=
"http://www.roblox.com/asset/?id=6026663719";new_releases=
"http://www.roblox.com/asset/?id=6026663730";album=
"http://www.roblox.com/asset/?id=6026647905";sd=
"http://www.roblox.com/asset/?id=6026681582";volume_up=
"http://www.roblox.com/asset/?id=6026671215";replay_5=
"http://www.roblox.com/asset/?id=6026666993";high_quality=
"http://www.roblox.com/asset/?id=6026660059";shuffle_on=
"http://www.roblox.com/asset/?id=6026666996";play_arrow=
"http://www.roblox.com/asset/?id=6026663699";snooze=
"http://www.roblox.com/asset/?id=6026667006";closed_caption_disabled=
"http://www.roblox.com/asset/?id=6026647900";subscriptions=
"http://www.roblox.com/asset/?id=6026671207";skip_next=
"http://www.roblox.com/asset/?id=6026667005";branding_watermark=
"http://www.roblox.com/asset/?id=6026647911";speed=
"http://www.roblox.com/asset/?id=6026681578";art_track=
"http://www.roblox.com/asset/?id=6026647908";
["3k"]="http://www.roblox.com/asset/?id=6026681574";
["4k"]="http://www.roblox.com/asset/?id=6026643017";volume_mute=
"http://www.roblox.com/asset/?id=6026671214";playlist_play=
"http://www.roblox.com/asset/?id=6026663723";remove_from_queue=
"http://www.roblox.com/asset/?id=6026663771";fast_forward=
"http://www.roblox.com/asset/?id=6026647902";play_disabled=
"http://www.roblox.com/asset/?id=6026663702";fast_rewind=
"http://www.roblox.com/asset/?id=6026647942";
["5k"]="http://www.roblox.com/asset/?id=6026681575";replay_10=
"http://www.roblox.com/asset/?id=6026667007";video_library=
"http://www.roblox.com/asset/?id=6026671208";loop=
"http://www.roblox.com/asset/?id=6026660087";replay_circle_filled=
"http://www.roblox.com/asset/?id=6026667002";
["5g"]="http://www.roblox.com/asset/?id=6026643007";library_add_check=
"http://www.roblox.com/asset/?id=6026660083";
["repeat"]="http://www.roblox.com/asset/?id=6026666998";queue_play_next=
"http://www.roblox.com/asset/?id=6026663700";forward_5=
"http://www.roblox.com/asset/?id=6026660067";web=
"http://www.roblox.com/asset/?id=6026671234";mic_none=
"http://www.roblox.com/asset/?id=6026660066";queue=
"http://www.roblox.com/asset/?id=6026663724";closed_caption_off=
"http://www.roblox.com/asset/?id=6026647943";hearing=
"http://www.roblox.com/asset/?id=6026660060";queue_music=
"http://www.roblox.com/asset/?id=6026663725";airplay=
"http://www.roblox.com/asset/?id=6026647929";
["9k"]="http://www.roblox.com/asset/?id=6026643013";video_label=
"http://www.roblox.com/asset/?id=6026671204";
["8k_plus"]="http://www.roblox.com/asset/?id=6026643003";play_circle_filled=
"http://www.roblox.com/asset/?id=6026663705";
["1k"]="http://www.roblox.com/asset/?id=6026643002";fiber_manual_record=
"http://www.roblox.com/asset/?id=6026647909";closed_caption=
"http://www.roblox.com/asset/?id=6026647896";subtitles=
"http://www.roblox.com/asset/?id=6026671203";featured_video=
"http://www.roblox.com/asset/?id=6026647910";replay_30=
"http://www.roblox.com/asset/?id=6026667010";
["10k"]="http://www.roblox.com/asset/?id=6026643035";
["5k_plus"]="http://www.roblox.com/asset/?id=6026643028";
["6k_plus"]="http://www.roblox.com/asset/?id=6026643019";replay=
"http://www.roblox.com/asset/?id=6026666999";repeat_on=
"http://www.roblox.com/asset/?id=6026666994";
["1k_plus"]="http://www.roblox.com/asset/?id=6026681580";
["2k_plus"]="http://www.roblox.com/asset/?id=6026681588";games=
"http://www.roblox.com/asset/?id=6026660074";volume_down=
"http://www.roblox.com/asset/?id=6026671206";mic=
"http://www.roblox.com/asset/?id=6026660078";call_to_action=
"http://www.roblox.com/asset/?id=6026647898";
["7k_plus"]="http://www.roblox.com/asset/?id=6026643012";av_timer=
"http://www.roblox.com/asset/?id=6026647934";
["9k_plus"]="http://www.roblox.com/asset/?id=6026681585";radio=
"http://www.roblox.com/asset/?id=6026663698";
["10mp"]="http://www.roblox.com/asset/?id=6031328149";
["20mp"]="http://www.roblox.com/asset/?id=6031488940";wb_twighlight=
"http://www.roblox.com/asset/?id=6034412760";movie_creation=
"http://www.roblox.com/asset/?id=6034323681";crop_portrait=
"http://www.roblox.com/asset/?id=6031630198";filter_5=
"http://www.roblox.com/asset/?id=6031597518";broken_image=
"http://www.roblox.com/asset/?id=6031471480";flip_camera_android=
"http://www.roblox.com/asset/?id=6034333280";flip_camera_ios=
"http://www.roblox.com/asset/?id=6034333267";circle=
"http://www.roblox.com/asset/?id=6031625146";photo_camera_front=
"http://www.roblox.com/asset/?id=6031771000";assistant=
"http://www.roblox.com/asset/?id=6031360356";face_retouching_natural=
"http://www.roblox.com/asset/?id=6034333274";palette=
"http://www.roblox.com/asset/?id=6034316009";nature_people=
"http://www.roblox.com/asset/?id=6034323711";
["14mp"]="http://www.roblox.com/asset/?id=6031328161";gradient=
"http://www.roblox.com/asset/?id=6034333261";filter_4=
"http://www.roblox.com/asset/?id=6031597512";panorama_wide_angle_select=
"http://www.roblox.com/asset/?id=6031770990";photo=
"http://www.roblox.com/asset/?id=6031770993";grid_off=
"http://www.roblox.com/asset/?id=6034333286";leak_add=
"http://www.roblox.com/asset/?id=6034407074";landscape=
"http://www.roblox.com/asset/?id=6034407069";exposure_plus_1=
"http://www.roblox.com/asset/?id=6034328970";slideshow=
"http://www.roblox.com/asset/?id=6031754546";camera_alt=
"http://www.roblox.com/asset/?id=6031572307";audiotrack=
"http://www.roblox.com/asset/?id=6031471489";filter_none=
"http://www.roblox.com/asset/?id=6031600815";blur_off=
"http://www.roblox.com/asset/?id=6031371055";crop_16_9=
"http://www.roblox.com/asset/?id=6031630205";blur_on=
"http://www.roblox.com/asset/?id=6031371068";brightness_4=
"http://www.roblox.com/asset/?id=6031471483";details=
"http://www.roblox.com/asset/?id=6034328968";panorama_horizontal=
"http://www.roblox.com/asset/?id=6034315966";camera_rear=
"http://www.roblox.com/asset/?id=6031572316";hdr_weak=
"http://www.roblox.com/asset/?id=6034407083";collections=
"http://www.roblox.com/asset/?id=6031625145";hdr_enhanced_select=
"http://www.roblox.com/asset/?id=6034333281";adjust=
"http://www.roblox.com/asset/?id=6031339048";burst_mode=
"http://www.roblox.com/asset/?id=6031572306";nature=
"http://www.roblox.com/asset/?id=6034323695";brightness_6=
"http://www.roblox.com/asset/?id=6031572309";
["19mp"]="http://www.roblox.com/asset/?id=6031339054";grain=
"http://www.roblox.com/asset/?id=6034333288";receipt_long=
"http://www.roblox.com/asset/?id=6031763428";photo_filter=
"http://www.roblox.com/asset/?id=6031770992";edit=
"http://www.roblox.com/asset/?id=6034328955";healing=
"http://www.roblox.com/asset/?id=6034407071";exposure_neg_1=
"http://www.roblox.com/asset/?id=6034328957";exposure=
"http://www.roblox.com/asset/?id=6034328962";wb_shade=
"http://www.roblox.com/asset/?id=6034315974";compare=
"http://www.roblox.com/asset/?id=6031625151";cases=
"http://www.roblox.com/asset/?id=6031572324";timer_3=
"http://www.roblox.com/asset/?id=6031754540";exposure_plus_2=
"http://www.roblox.com/asset/?id=6034328961";
["12mp"]="http://www.roblox.com/asset/?id=6031328140";
["22mp"]="http://www.roblox.com/asset/?id=6031360353";timer_off=
"http://www.roblox.com/asset/?id=6031734881";auto_stories=
"http://www.roblox.com/asset/?id=6031360360";rotate_left=
"http://www.roblox.com/asset/?id=6031763427";wb_iridescent=
"http://www.roblox.com/asset/?id=6034315972";shutter_speed=
"http://www.roblox.com/asset/?id=6031763443";switch_video=
"http://www.roblox.com/asset/?id=6031754536";
["23mp"]="http://www.roblox.com/asset/?id=6031339045";euro=
"http://www.roblox.com/asset/?id=6034328963";
["15mp"]="http://www.roblox.com/asset/?id=6031328158";filter_center_focus=
"http://www.roblox.com/asset/?id=6031600817";photo_library=
"http://www.roblox.com/asset/?id=6031770998";mp=
"http://www.roblox.com/asset/?id=6034323674";looks_4=
"http://www.roblox.com/asset/?id=6034407089";filter_2=
"http://www.roblox.com/asset/?id=6031597521";crop_3_2=
"http://www.roblox.com/asset/?id=6034328956";auto_fix_normal=
"http://www.roblox.com/asset/?id=6031371074";auto_fix_off=
"http://www.roblox.com/asset/?id=6031360381";wb_auto=
"http://www.roblox.com/asset/?id=6031734875";switch_camera=
"http://www.roblox.com/asset/?id=6031754550";filter_vintage=
"http://www.roblox.com/asset/?id=6031600811";photo_size_select_small=
"http://www.roblox.com/asset/?id=6031763457";blur_linear=
"http://www.roblox.com/asset/?id=6031488930";hdr_on=
"http://www.roblox.com/asset/?id=6034333279";tag_faces=
"http://www.roblox.com/asset/?id=6031754560";
["21mp"]="http://www.roblox.com/asset/?id=6031339065";camera=
"http://www.roblox.com/asset/?id=6031572312";image_aspect_ratio=
"http://www.roblox.com/asset/?id=6034407073";filter_b_and_w=
"http://www.roblox.com/asset/?id=6031600824";crop_landscape=
"http://www.roblox.com/asset/?id=6031630202";
["13mp"]="http://www.roblox.com/asset/?id=6031328137";grid_on=
"http://www.roblox.com/asset/?id=6034333276";motion_photos_pause=
"http://www.roblox.com/asset/?id=6034323668";filter_6=
"http://www.roblox.com/asset/?id=6031597524";linked_camera=
"http://www.roblox.com/asset/?id=6034407082";panorama_fish_eye=
"http://www.roblox.com/asset/?id=6034315969";panorama=
"http://www.roblox.com/asset/?id=6034315955";color_lens=
"http://www.roblox.com/asset/?id=6031625148";lens=
"http://www.roblox.com/asset/?id=6034407081";crop_din=
"http://www.roblox.com/asset/?id=6031630208";exposure_neg_2=
"http://www.roblox.com/asset/?id=6034328973";mic_external_off=
"http://www.roblox.com/asset/?id=6034323672";crop_free=
"http://www.roblox.com/asset/?id=6031630212";crop_original=
"http://www.roblox.com/asset/?id=6031630204";panorama_photosphere_select=
"http://www.roblox.com/asset/?id=6034315975";photo_size_select_actual=
"http://www.roblox.com/asset/?id=6031771012";leak_remove=
"http://www.roblox.com/asset/?id=6034407080";collections_bookmark=
"http://www.roblox.com/asset/?id=6034328965";straighten=
"http://www.roblox.com/asset/?id=6031754545";timelapse=
"http://www.roblox.com/asset/?id=6031754541";picture_as_pdf=
"http://www.roblox.com/asset/?id=6031763425";crop_rotate=
"http://www.roblox.com/asset/?id=6031630203";control_point_duplicate=
"http://www.roblox.com/asset/?id=6034328959";photo_camera_back=
"http://www.roblox.com/asset/?id=6031771007";looks_3=
"http://www.roblox.com/asset/?id=6034407088";motion_photos_off=
"http://www.roblox.com/asset/?id=6034323670";rotate_right=
"http://www.roblox.com/asset/?id=6031763429";view_compact=
"http://www.roblox.com/asset/?id=6031734878";crop_7_5=
"http://www.roblox.com/asset/?id=6031630197";style=
"http://www.roblox.com/asset/?id=6031754538";exposure_zero=
"http://www.roblox.com/asset/?id=6034329000";camera_front=
"http://www.roblox.com/asset/?id=6031572318";hdr_strong=
"http://www.roblox.com/asset/?id=6034333272";view_comfy=
"http://www.roblox.com/asset/?id=6031734876";panorama_vertical=
"http://www.roblox.com/asset/?id=6034315963";panorama_vertical_select=
"http://www.roblox.com/asset/?id=6034315961";looks_two=
"http://www.roblox.com/asset/?id=6034412757";filter_drama=
"http://www.roblox.com/asset/?id=6031600813";center_focus_strong=
"http://www.roblox.com/asset/?id=6031625147";
["18mp"]="http://www.roblox.com/asset/?id=6031339064";
["7mp"]="http://www.roblox.com/asset/?id=6031328139";wb_sunny=
"http://www.roblox.com/asset/?id=6034412758";filter_9_plus=
"http://www.roblox.com/asset/?id=6031600812";crop=
"http://www.roblox.com/asset/?id=6034328964";vignette=
"http://www.roblox.com/asset/?id=6031734905";brightness_2=
"http://www.roblox.com/asset/?id=6031488938";crop_square=
"http://www.roblox.com/asset/?id=6031630222";looks_5=
"http://www.roblox.com/asset/?id=6034412764";flip=
"http://www.roblox.com/asset/?id=6034333275";looks_one=
"http://www.roblox.com/asset/?id=6034412761";flash_off=
"http://www.roblox.com/asset/?id=6034333270";hdr_off=
"http://www.roblox.com/asset/?id=6034333266";photo_album=
"http://www.roblox.com/asset/?id=6031770989";motion_photos_paused=
"http://www.roblox.com/asset/?id=6034323675";photo_camera=
"http://www.roblox.com/asset/?id=6031770997";
["2mp"]="http://www.roblox.com/asset/?id=6031328138";
["3mp"]="http://www.roblox.com/asset/?id=6031328136";
["24mp"]="http://www.roblox.com/asset/?id=6031360352";filter_9=
"http://www.roblox.com/asset/?id=6031597534";
["6mp"]="http://www.roblox.com/asset/?id=6031328131";remove_red_eye=
"http://www.roblox.com/asset/?id=6031763426";
["4mp"]="http://www.roblox.com/asset/?id=6031328152";add_a_photo=
"http://www.roblox.com/asset/?id=6031339049";filter_3=
"http://www.roblox.com/asset/?id=6031597513";crop_5_4=
"http://www.roblox.com/asset/?id=6034328960";
["8mp"]="http://www.roblox.com/asset/?id=6031328133";camera_roll=
"http://www.roblox.com/asset/?id=6031572314";panorama_wide_angle=
"http://www.roblox.com/asset/?id=6031770995";transform=
"http://www.roblox.com/asset/?id=6031734873";flare=
"http://www.roblox.com/asset/?id=6031600816";image_search=
"http://www.roblox.com/asset/?id=6034407084";auto_awesome=
"http://www.roblox.com/asset/?id=6031360365";motion_photos_on=
"http://www.roblox.com/asset/?id=6034323669";rotate_90_degrees_ccw=
"http://www.roblox.com/asset/?id=6031763456";filter_1=
"http://www.roblox.com/asset/?id=6031597511";filter_tilt_shift=
"http://www.roblox.com/asset/?id=6031600814";image=
"http://www.roblox.com/asset/?id=6034407078";center_focus_weak=
"http://www.roblox.com/asset/?id=6031625144";blur_circular=
"http://www.roblox.com/asset/?id=6031488945";bedtime=
"http://www.roblox.com/asset/?id=6031371054";auto_fix_high=
"http://www.roblox.com/asset/?id=6031360355";monochrome_photos=
"http://www.roblox.com/asset/?id=6034323678";flash_auto=
"http://www.roblox.com/asset/?id=6034333287";
["5mp"]="http://www.roblox.com/asset/?id=6031328144";photo_size_select_large=
"http://www.roblox.com/asset/?id=6031763423";assistant_photo=
"http://www.roblox.com/asset/?id=6031339052";animation=
"http://www.roblox.com/asset/?id=6031625150";looks=
"http://www.roblox.com/asset/?id=6034407096";
["17mp"]="http://www.roblox.com/asset/?id=6031339055";panorama_horizontal_select=
"http://www.roblox.com/asset/?id=6034315965";flash_on=
"http://www.roblox.com/asset/?id=6034333271";iso=
"http://www.roblox.com/asset/?id=6034407106";music_note=
"http://www.roblox.com/asset/?id=6034323673";music_off=
"http://www.roblox.com/asset/?id=6034323679";navigate_next=
"http://www.roblox.com/asset/?id=6034315956";timer=
"http://www.roblox.com/asset/?id=6031754564";loupe=
"http://www.roblox.com/asset/?id=6034412770";navigate_before=
"http://www.roblox.com/asset/?id=6034323696";brightness_1=
"http://www.roblox.com/asset/?id=6031471488";brightness_7=
"http://www.roblox.com/asset/?id=6031471491";tonality=
"http://www.roblox.com/asset/?id=6031734891";brush=
"http://www.roblox.com/asset/?id=6031572320";colorize=
"http://www.roblox.com/asset/?id=6031625161";filter_7=
"http://www.roblox.com/asset/?id=6031597515";
["16mp"]="http://www.roblox.com/asset/?id=6031328168";timer_10=
"http://www.roblox.com/asset/?id=6031734880";portrait=
"http://www.roblox.com/asset/?id=6031763434";tune=
"http://www.roblox.com/asset/?id=6031734877";image_not_supported=
"http://www.roblox.com/asset/?id=6034407076";wb_cloudy=
"http://www.roblox.com/asset/?id=6031734907";auto_awesome_motion=
"http://www.roblox.com/asset/?id=6031360370";filter_8=
"http://www.roblox.com/asset/?id=6031597532";brightness_5=
"http://www.roblox.com/asset/?id=6031471479";movie_filter=
"http://www.roblox.com/asset/?id=6034323687";add_photo_alternate=
"http://www.roblox.com/asset/?id=6031471484";add_to_photos=
"http://www.roblox.com/asset/?id=6031371075";texture=
"http://www.roblox.com/asset/?id=6031754553";
["11mp"]="http://www.roblox.com/asset/?id=6031328141";mic_external_on=
"http://www.roblox.com/asset/?id=6034323671";looks_6=
"http://www.roblox.com/asset/?id=6034412759";dehaze=
"http://www.roblox.com/asset/?id=6031630200";control_point=
"http://www.roblox.com/asset/?id=6031625131";panorama_photosphere=
"http://www.roblox.com/asset/?id=6034412763";filter_frames=
"http://www.roblox.com/asset/?id=6031600833";auto_awesome_mosaic=
"http://www.roblox.com/asset/?id=6031371053";
["9mp"]="http://www.roblox.com/asset/?id=6031328146";filter=
"http://www.roblox.com/asset/?id=6031597514";brightness_3=
"http://www.roblox.com/asset/?id=6031572317";dirty_lens=
"http://www.roblox.com/asset/?id=6034328967";wb_incandescent=
"http://www.roblox.com/asset/?id=6034316010";filter_hdr=
"http://www.roblox.com/asset/?id=6031600819";textsms=
"http://www.roblox.com/asset/?id=6035202006";comment=
"http://www.roblox.com/asset/?id=6035181871";call_end=
"http://www.roblox.com/asset/?id=6035173845";qr_code_scanner=
"http://www.roblox.com/asset/?id=6035202022";phonelink_setup=
"http://www.roblox.com/asset/?id=6035202025";call_merge=
"http://www.roblox.com/asset/?id=6035173843";phonelink_erase=
"http://www.roblox.com/asset/?id=6035202085";contact_mail=
"http://www.roblox.com/asset/?id=6035181868";contact_phone=
"http://www.roblox.com/asset/?id=6035181861";screen_share=
"http://www.roblox.com/asset/?id=6035202008";present_to_all=
"http://www.roblox.com/asset/?id=6035202020";stay_primary_portrait=
"http://www.roblox.com/asset/?id=6035202009";message=
"http://www.roblox.com/asset/?id=6035202033";sentiment_satisfied_alt=
"http://www.roblox.com/asset/?id=6035202069";stay_current_portrait=
"http://www.roblox.com/asset/?id=6035202004";voicemail=
"http://www.roblox.com/asset/?id=6035202019";business=
"http://www.roblox.com/asset/?id=6035173853";mail_outline=
"http://www.roblox.com/asset/?id=6035190844";vpn_key=
"http://www.roblox.com/asset/?id=6035202034";forward_to_inbox=
"http://www.roblox.com/asset/?id=6035190840";contacts=
"http://www.roblox.com/asset/?id=6035181864";phonelink_ring=
"http://www.roblox.com/asset/?id=6035202066";domain_disabled=
"http://www.roblox.com/asset/?id=6035181862";person_add_disabled=
"http://www.roblox.com/asset/?id=6035202007";stay_primary_landscape=
"http://www.roblox.com/asset/?id=6035202026";alternate_email=
"http://www.roblox.com/asset/?id=6035173865";phone_disabled=
"http://www.roblox.com/asset/?id=6035202028";email=
"http://www.roblox.com/asset/?id=6035181866";mobile_screen_share=
"http://www.roblox.com/asset/?id=6035202021";live_help=
"http://www.roblox.com/asset/?id=6035190836";chat_bubble=
"http://www.roblox.com/asset/?id=6035181858";stop_screen_share=
"http://www.roblox.com/asset/?id=6035202042";location_on=
"http://www.roblox.com/asset/?id=6035190846";chat_bubble_outline=
"http://www.roblox.com/asset/?id=6035181869";dialer_sip=
"http://www.roblox.com/asset/?id=6035181865";no_sim=
"http://www.roblox.com/asset/?id=6035202030";list_alt=
"http://www.roblox.com/asset/?id=6035190838";call=
"http://www.roblox.com/asset/?id=6035173859";pause_presentation=
"http://www.roblox.com/asset/?id=6035202015";invert_colors_off=
"http://www.roblox.com/asset/?id=6035190842";call_missed_outgoing=
"http://www.roblox.com/asset/?id=6035173847";stay_current_landscape=
"http://www.roblox.com/asset/?id=6035202011";import_export=
"http://www.roblox.com/asset/?id=6035202040";add_ic_call=
"http://www.roblox.com/asset/?id=6035173839";dialpad=
"http://www.roblox.com/asset/?id=6035181892";nat=
"http://www.roblox.com/asset/?id=6035202082";unsubscribe=
"http://www.roblox.com/asset/?id=6035202044";mark_chat_unread=
"http://www.roblox.com/asset/?id=6035190841";portable_wifi_off=
"http://www.roblox.com/asset/?id=6035202091";location_off=
"http://www.roblox.com/asset/?id=6035202049";person_search=
"http://www.roblox.com/asset/?id=6035202013";phonelink_lock=
"http://www.roblox.com/asset/?id=6035202064";desktop_access_disabled=
"http://www.roblox.com/asset/?id=6035181863";import_contacts=
"http://www.roblox.com/asset/?id=6035190854";rss_feed=
"http://www.roblox.com/asset/?id=6035202016";chat=
"http://www.roblox.com/asset/?id=6035173838";print_disabled=
"http://www.roblox.com/asset/?id=6035202041";mark_email_read=
"http://www.roblox.com/asset/?id=6035202038";hourglass_top=
"http://www.roblox.com/asset/?id=6035190886";clear_all=
"http://www.roblox.com/asset/?id=6035181870";forum=
"http://www.roblox.com/asset/?id=6035202002";qr_code=
"http://www.roblox.com/asset/?id=6035202012";speaker_phone=
"http://www.roblox.com/asset/?id=6035202018";rtt=
"http://www.roblox.com/asset/?id=6035202010";domain_verification=
"http://www.roblox.com/asset/?id=6035181867";app_registration=
"http://www.roblox.com/asset/?id=6035173870";call_split=
"http://www.roblox.com/asset/?id=6035173861";cell_wifi=
"http://www.roblox.com/asset/?id=6035173852";phone_enabled=
"http://www.roblox.com/asset/?id=6035202089";call_made=
"http://www.roblox.com/asset/?id=6035173858";call_received=
"http://www.roblox.com/asset/?id=6035173844";phone=
"http://www.roblox.com/asset/?id=6035202017";ring_volume=
"http://www.roblox.com/asset/?id=6035202032";mark_email_unread=
"http://www.roblox.com/asset/?id=6035202027";hourglass_bottom=
"http://www.roblox.com/asset/?id=6035202043";read_more=
"http://www.roblox.com/asset/?id=6035202014";duo=
"http://www.roblox.com/asset/?id=6035181860";more_time=
"http://www.roblox.com/asset/?id=6035202036";wifi_calling=
"http://www.roblox.com/asset/?id=6035202065";swap_calls=
"http://www.roblox.com/asset/?id=6035202037";cancel_presentation=
"http://www.roblox.com/asset/?id=6035173837";call_missed=
"http://www.roblox.com/asset/?id=6035173850";mark_chat_read=
"http://www.roblox.com/asset/?id=6035202031";text_snippet=
"http://www.roblox.com/asset/?id=6031302995";snippet_folder=
"http://www.roblox.com/asset/?id=6031302947";workspaces_outline=
"http://www.roblox.com/asset/?id=6031302952";file_download=
"http://www.roblox.com/asset/?id=6031302931";request_quote=
"http://www.roblox.com/asset/?id=6031302941";approval=
"http://www.roblox.com/asset/?id=6031302928";drive_folder_upload=
"http://www.roblox.com/asset/?id=6031302929";rule_folder=
"http://www.roblox.com/asset/?id=6031302940";attach_email=
"http://www.roblox.com/asset/?id=6031302935";topic=
"http://www.roblox.com/asset/?id=6031302976";upload_file=
"http://www.roblox.com/asset/?id=6031302959";attachment=
"http://www.roblox.com/asset/?id=6031302921";file_download_done=
"http://www.roblox.com/asset/?id=6031302926";drive_file_move_outline=
"http://www.roblox.com/asset/?id=6031302924";cloud_upload=
"http://www.roblox.com/asset/?id=6031302992";cloud_circle=
"http://www.roblox.com/asset/?id=6031302919";folder_shared=
"http://www.roblox.com/asset/?id=6031302945";cloud_download=
"http://www.roblox.com/asset/?id=6031302917";file_upload=
"http://www.roblox.com/asset/?id=6031302996";workspaces_filled=
"http://www.roblox.com/asset/?id=6031302961";cloud_queue=
"http://www.roblox.com/asset/?id=6031302916";cloud=
"http://www.roblox.com/asset/?id=6031302918";folder_open=
"http://www.roblox.com/asset/?id=6031302934";grid_view=
"http://www.roblox.com/asset/?id=6031302950";cloud_off=
"http://www.roblox.com/asset/?id=6031302993";create_new_folder=
"http://www.roblox.com/asset/?id=6031302933";cloud_done=
"http://www.roblox.com/asset/?id=6031302927";folder=
"http://www.roblox.com/asset/?id=6031302932";drive_file_move=
"http://www.roblox.com/asset/?id=6031302922";drive_file_rename_outline=
"http://www.roblox.com/asset/?id=6031302994";notifications_active=
"http://www.roblox.com/asset/?id=6034304908";sentiment_neutral=
"http://www.roblox.com/asset/?id=6034230636";sick=
"http://www.roblox.com/asset/?id=6034230642";poll=
"http://www.roblox.com/asset/?id=6034267991";emoji_events=
"http://www.roblox.com/asset/?id=6034275726";groups=
"http://www.roblox.com/asset/?id=6034281935";sports_soccer=
"http://www.roblox.com/asset/?id=6034227075";person_add=
"http://www.roblox.com/asset/?id=6034287514";mood_bad=
"http://www.roblox.com/asset/?id=6034295706";person_remove_alt_1=
"http://www.roblox.com/asset/?id=6034287515";king_bed=
"http://www.roblox.com/asset/?id=6034281948";architecture=
"http://www.roblox.com/asset/?id=6034275730";deck=
"http://www.roblox.com/asset/?id=6034295703";group_add=
"http://www.roblox.com/asset/?id=6034281909";sports_basketball=
"http://www.roblox.com/asset/?id=6034230649";emoji_symbols=
"http://www.roblox.com/asset/?id=6034281899";switch_account=
"http://www.roblox.com/asset/?id=6034227138";remove_moderator=
"http://www.roblox.com/asset/?id=6034267998";coronavirus=
"http://www.roblox.com/asset/?id=6034275724";people=
"http://www.roblox.com/asset/?id=6034287513";person=
"http://www.roblox.com/asset/?id=6034287594";elderly=
"http://www.roblox.com/asset/?id=6034295698";clean_hands=
"http://www.roblox.com/asset/?id=6034275729";emoji_flags=
"http://www.roblox.com/asset/?id=6034304898";psychology=
"http://www.roblox.com/asset/?id=6034287516";person_add_alt=
"http://www.roblox.com/asset/?id=6034267994";sports_volleyball=
"http://www.roblox.com/asset/?id=6034227139";domain=
"http://www.roblox.com/asset/?id=6034275722";emoji_objects=
"http://www.roblox.com/asset/?id=6034281900";ios_share=
"http://www.roblox.com/asset/?id=6034281941";history_edu=
"http://www.roblox.com/asset/?id=6034281934";share=
"http://www.roblox.com/asset/?id=6034230648";military_tech=
"http://www.roblox.com/asset/?id=6034295711";sports_kabaddi=
"http://www.roblox.com/asset/?id=6034227141";cake=
"http://www.roblox.com/asset/?id=6034295702";engineering=
"http://www.roblox.com/asset/?id=6034281908";emoji_food_beverage=
"http://www.roblox.com/asset/?id=6034304883";notifications_none=
"http://www.roblox.com/asset/?id=6034308947";emoji_people=
"http://www.roblox.com/asset/?id=6034281904";thumb_down_alt=
"http://www.roblox.com/asset/?id=6034227069";sentiment_very_satisfied=
"http://www.roblox.com/asset/?id=6034230650";nights_stay=
"http://www.roblox.com/asset/?id=6034304881";reduce_capacity=
"http://www.roblox.com/asset/?id=6034268013";add_moderator=
"http://www.roblox.com/asset/?id=6034295699";science=
"http://www.roblox.com/asset/?id=6034230640";pages=
"http://www.roblox.com/asset/?id=6034304892";sentiment_satisfied=
"http://www.roblox.com/asset/?id=6034230668";plus_one=
"http://www.roblox.com/asset/?id=6034268012";party_mode=
"http://www.roblox.com/asset/?id=6034287521";person_remove=
"http://www.roblox.com/asset/?id=6034267996";single_bed=
"http://www.roblox.com/asset/?id=6034230651";mood=
"http://www.roblox.com/asset/?id=6034295704";public=
"http://www.roblox.com/asset/?id=6034287522";sports_rugby=
"http://www.roblox.com/asset/?id=6034227073";sports_handball=
"http://www.roblox.com/asset/?id=6034227074";person_add_alt_1=
"http://www.roblox.com/asset/?id=6034287519";people_alt=
"http://www.roblox.com/asset/?id=6034287518";notifications_off=
"http://www.roblox.com/asset/?id=6034304894";whatshot=
"http://www.roblox.com/asset/?id=6034287525";emoji_transportation=
"http://www.roblox.com/asset/?id=6034281894";outdoor_grill=
"http://www.roblox.com/asset/?id=6034304900";sentiment_very_dissatisfied=
"http://www.roblox.com/asset/?id=6034230659";masks=
"http://www.roblox.com/asset/?id=6034295710";luggage=
"http://www.roblox.com/asset/?id=6034295708";sports_motorsports=
"http://www.roblox.com/asset/?id=6034227071";sports_esports=
"http://www.roblox.com/asset/?id=6034227061";location_city=
"http://www.roblox.com/asset/?id=6034304889";sports_golf=
"http://www.roblox.com/asset/?id=6034227060";sentiment_dissatisfied=
"http://www.roblox.com/asset/?id=6034230637";no_luggage=
"http://www.roblox.com/asset/?id=6034304891";fireplace=
"http://www.roblox.com/asset/?id=6034281910";emoji_nature=
"http://www.roblox.com/asset/?id=6034281896";group=
"http://www.roblox.com/asset/?id=6034281901";thumb_up_alt=
"http://www.roblox.com/asset/?id=6034227076";sports_tennis=
"http://www.roblox.com/asset/?id=6034227068";facebook=
"http://www.roblox.com/asset/?id=6034281898";sports_mma=
"http://www.roblox.com/asset/?id=6034227072";person_outline=
"http://www.roblox.com/asset/?id=6034268008";sports_baseball=
"http://www.roblox.com/asset/?id=6034230652";sports_cricket=
"http://www.roblox.com/asset/?id=6034230660";people_outline=
"http://www.roblox.com/asset/?id=6034287528";notifications_paused=
"http://www.roblox.com/asset/?id=6034304896";emoji_emotions=
"http://www.roblox.com/asset/?id=6034275731";follow_the_signs=
"http://www.roblox.com/asset/?id=6034281911";sanitizer=
"http://www.roblox.com/asset/?id=6034287586";self_improvement=
"http://www.roblox.com/asset/?id=6034230634";notifications=
"http://www.roblox.com/asset/?id=6034308946";public_off=
"http://www.roblox.com/asset/?id=6034287538";recommend=
"http://www.roblox.com/asset/?id=6034287524";sports_football=
"http://www.roblox.com/asset/?id=6034227067";sports_hockey=
"http://www.roblox.com/asset/?id=6034227064";school=
"http://www.roblox.com/asset/?id=6034230641";connect_without_contact=
"http://www.roblox.com/asset/?id=6034275800";sports=
"http://www.roblox.com/asset/?id=6034230647";construction=
"http://www.roblox.com/asset/?id=6034275725";inventory=
"http://www.roblox.com/asset/?id=6035056487";add_box=
"http://www.roblox.com/asset/?id=6035047375";how_to_reg=
"http://www.roblox.com/asset/?id=6035053288";unarchive=
"http://www.roblox.com/asset/?id=6035078921";block_flipped=
"http://www.roblox.com/asset/?id=6035047378";file_copy=
"http://www.roblox.com/asset/?id=6035053293";bolt=
"http://www.roblox.com/asset/?id=6035047381";remove_circle_outline=
"http://www.roblox.com/asset/?id=6035067843";move_to_inbox=
"http://www.roblox.com/asset/?id=6035067838";save_alt=
"http://www.roblox.com/asset/?id=6035067842";weekend=
"http://www.roblox.com/asset/?id=6035078894";where_to_vote=
"http://www.roblox.com/asset/?id=6035078913";biotech=
"http://www.roblox.com/asset/?id=6035047385";report_off=
"http://www.roblox.com/asset/?id=6035067830";clear=
"http://www.roblox.com/asset/?id=6035047409";redo=
"http://www.roblox.com/asset/?id=6035056483";link=
"http://www.roblox.com/asset/?id=6035056475";drafts=
"http://www.roblox.com/asset/?id=6035053297";push_pin=
"http://www.roblox.com/asset/?id=6035056481";reply=
"http://www.roblox.com/asset/?id=6035067844";undo=
"http://www.roblox.com/asset/?id=6035078896";archive=
"http://www.roblox.com/asset/?id=6035047379";add=
"http://www.roblox.com/asset/?id=6035047377";insights=
"http://www.roblox.com/asset/?id=6035067839";flag=
"http://www.roblox.com/asset/?id=6035053279";save=
"http://www.roblox.com/asset/?id=6035067857";text_format=
"http://www.roblox.com/asset/?id=6035078890";content_cut=
"http://www.roblox.com/asset/?id=6035053280";ballot=
"http://www.roblox.com/asset/?id=6035047386";remove=
"http://www.roblox.com/asset/?id=6035067836";calculate=
"http://www.roblox.com/asset/?id=6035047384";report=
"http://www.roblox.com/asset/?id=6035067826";markunread=
"http://www.roblox.com/asset/?id=6035056476";delete_sweep=
"http://www.roblox.com/asset/?id=6035053301";gesture=
"http://www.roblox.com/asset/?id=6035053287";link_off=
"http://www.roblox.com/asset/?id=6035056484";forward=
"http://www.roblox.com/asset/?id=6035053298";reply_all=
"http://www.roblox.com/asset/?id=6035067824";how_to_vote=
"http://www.roblox.com/asset/?id=6035053295";square_foot=
"http://www.roblox.com/asset/?id=6035078918";outlined_flag=
"http://www.roblox.com/asset/?id=6035056486";add_circle=
"http://www.roblox.com/asset/?id=6035047380";stacked_bar_chart=
"http://www.roblox.com/asset/?id=6035078892";policy=
"http://www.roblox.com/asset/?id=6035056512";backspace=
"http://www.roblox.com/asset/?id=6035047397";sort=
"http://www.roblox.com/asset/?id=6035078888";content_paste=
"http://www.roblox.com/asset/?id=6035053285";low_priority=
"http://www.roblox.com/asset/?id=6035056491";font_download=
"http://www.roblox.com/asset/?id=6035053275";shield=
"http://www.roblox.com/asset/?id=6035078889";waves=
"http://www.roblox.com/asset/?id=6035078898";select_all=
"http://www.roblox.com/asset/?id=6035067834";dynamic_feed=
"http://www.roblox.com/asset/?id=6035053289";mail=
"http://www.roblox.com/asset/?id=6035056477";amp_stories=
"http://www.roblox.com/asset/?id=6035047382";filter_list=
"http://www.roblox.com/asset/?id=6035053294";send=
"http://www.roblox.com/asset/?id=6035067832";create=
"http://www.roblox.com/asset/?id=6035053304";stream=
"http://www.roblox.com/asset/?id=6035078897";next_week=
"http://www.roblox.com/asset/?id=6035067835";inbox=
"http://www.roblox.com/asset/?id=6035067831";add_link=
"http://www.roblox.com/asset/?id=6035047374";content_copy=
"http://www.roblox.com/asset/?id=6035053278";remove_circle=
"http://www.roblox.com/asset/?id=6035067837";add_circle_outline=
"http://www.roblox.com/asset/?id=6035047391";block=
"http://www.roblox.com/asset/?id=6035047387";tag=
"http://www.roblox.com/asset/?id=6035078895";beach_access=
"http://www.roblox.com/asset/?id=6035107923";stroller=
"http://www.roblox.com/asset/?id=6035161535";family_restroom=
"http://www.roblox.com/asset/?id=6035121916";corporate_fare=
"http://www.roblox.com/asset/?id=6035121908";no_meeting_room=
"http://www.roblox.com/asset/?id=6035153649";do_not_touch=
"http://www.roblox.com/asset/?id=6035121915";ac_unit=
"http://www.roblox.com/asset/?id=6035107929";business_center=
"http://www.roblox.com/asset/?id=6035107933";spa=
"http://www.roblox.com/asset/?id=6035153639";no_flash=
"http://www.roblox.com/asset/?id=6035145424";no_cell=
"http://www.roblox.com/asset/?id=6035145376";room_service=
"http://www.roblox.com/asset/?id=6035153648";tapas=
"http://www.roblox.com/asset/?id=6035161533";microwave=
"http://www.roblox.com/asset/?id=6035145367";meeting_room=
"http://www.roblox.com/asset/?id=6035145361";wash=
"http://www.roblox.com/asset/?id=6035161540";escalator=
"http://www.roblox.com/asset/?id=6035121939";house_siding=
"http://www.roblox.com/asset/?id=6035145393";food_bank=
"http://www.roblox.com/asset/?id=6035121921";foundation=
"http://www.roblox.com/asset/?id=6035121918";elevator=
"http://www.roblox.com/asset/?id=6035121912";room_preferences=
"http://www.roblox.com/asset/?id=6035153642";do_not_step=
"http://www.roblox.com/asset/?id=6035121910";free_breakfast=
"http://www.roblox.com/asset/?id=6035145363";house=
"http://www.roblox.com/asset/?id=6035145364";child_care=
"http://www.roblox.com/asset/?id=6035107927";night_shelter=
"http://www.roblox.com/asset/?id=6035145378";child_friendly=
"http://www.roblox.com/asset/?id=6035121942";checkroom=
"http://www.roblox.com/asset/?id=6035107931";hot_tub=
"http://www.roblox.com/asset/?id=6035145382";dry=
"http://www.roblox.com/asset/?id=6035121909";charging_station=
"http://www.roblox.com/asset/?id=6035107925";all_inclusive=
"http://www.roblox.com/asset/?id=6035107920";bento=
"http://www.roblox.com/asset/?id=6035107924";no_backpack=
"http://www.roblox.com/asset/?id=6035145368";storefront=
"http://www.roblox.com/asset/?id=6035161534";no_food=
"http://www.roblox.com/asset/?id=6035145372";backpack=
"http://www.roblox.com/asset/?id=6035107928";stairs=
"http://www.roblox.com/asset/?id=6035153637";carpenter=
"http://www.roblox.com/asset/?id=6035107955";no_stroller=
"http://www.roblox.com/asset/?id=6035153661";roofing=
"http://www.roblox.com/asset/?id=6035153656";umbrella=
"http://www.roblox.com/asset/?id=6035161550";sports_bar=
"http://www.roblox.com/asset/?id=6035153638";apartment=
"http://www.roblox.com/asset/?id=6035107922";smoke_free=
"http://www.roblox.com/asset/?id=6035153647";pool=
"http://www.roblox.com/asset/?id=6035153655";bathtub=
"http://www.roblox.com/asset/?id=6035107939";no_drinks=
"http://www.roblox.com/asset/?id=6035145390";escalator_warning=
"http://www.roblox.com/asset/?id=6035121930";wheelchair_pickup=
"http://www.roblox.com/asset/?id=6035161536";smoking_rooms=
"http://www.roblox.com/asset/?id=6035153636";rice_bowl=
"http://www.roblox.com/asset/?id=6035153662";tty=
"http://www.roblox.com/asset/?id=6035161541";no_photography=
"http://www.roblox.com/asset/?id=6035153664";casino=
"http://www.roblox.com/asset/?id=6035107936";fence=
"http://www.roblox.com/asset/?id=6035121923";grass=
"http://www.roblox.com/asset/?id=6035145359";countertops=
"http://www.roblox.com/asset/?id=6035121914";kitchen=
"http://www.roblox.com/asset/?id=6035145362";golf_course=
"http://www.roblox.com/asset/?id=6035145423";soap=
"http://www.roblox.com/asset/?id=6035153645";water_damage=
"http://www.roblox.com/asset/?id=6035161563";airport_shuttle=
"http://www.roblox.com/asset/?id=6035107921";fitness_center=
"http://www.roblox.com/asset/?id=6035121907";baby_changing_station=
"http://www.roblox.com/asset/?id=6035107930";fire_extinguisher=
"http://www.roblox.com/asset/?id=6035121913";sparkle=
"http://www.roblox.com/asset/?id=4483362748"
}
}


local n=(syn and syn.request)or(http and http.request)or http_request or nil
local o=TweenInfo.new(0.3,Enum.EasingStyle.Exponential,Enum.EasingDirection.Out)
local p={
["Nightlight (Classic)"]={Color3.fromRGB(147,255,239),Color3.fromRGB(201,211,233),Color3.fromRGB(255,167,227)},
["Nightlight (Neo)"]={Color3.fromRGB(117,164,206),Color3.fromRGB(123,201,201),Color3.fromRGB(224,138,175)},
Starlight={Color3.fromRGB(147,255,239),Color3.fromRGB(181,206,241),Color3.fromRGB(214,158,243)},
Solar={Color3.fromRGB(242,157,76),Color3.fromRGB(240,179,81),Color3.fromRGB(238,201,86)},
Sparkle={Color3.fromRGB(199,130,242),Color3.fromRGB(221,130,238),Color3.fromRGB(243,129,233)},
Lime={Color3.fromRGB(170,255,127),Color3.fromRGB(163,220,138),Color3.fromRGB(155,185,149)},
Vine={Color3.fromRGB(0,191,143),Color3.fromRGB(0,126,94),Color3.fromRGB(0,61,46)},
Cherry={Color3.fromRGB(148,54,54),Color3.fromRGB(168,67,70),Color3.fromRGB(188,80,86)},
Daylight={Color3.fromRGB(51,156,255),Color3.fromRGB(89,171,237),Color3.fromRGB(127,186,218)},
Blossom={Color3.fromRGB(255,165,243),Color3.fromRGB(213,129,231),Color3.fromRGB(170,92,218)},
}

local function GetIcon(q,r)
if r=="Custom"then
return"rbxassetid://"..q
elseif r=="Lucide"then

local s=not l and game:HttpGet"https://raw.githubusercontent.com/latte-soft/lucide-roblox/refs/heads/master/lib/Icons.luau"
local t=l and m.Lucide or loadstring(s)()
if not l then
q=string.match(string.lower(q),"^%s*(.*)%s*$")::string
local u=t['48px']

local v=u[q]
if not v then
error("Lucide Icons: Failed to find icon by the name of \""..q.."\.",2)
end

local w=v[2]
local x=v[3]

if type(v[1])~="number"or type(w)~="table"or type(x)~="table"then
error"Lucide Icons: Internal error: Invalid auto-generated asset entry"
end

local y=Vector2.new(w[1],w[2])
local z=Vector2.new(x[1],x[2])

local A={
id=v[1],
imageRectSize=y,
imageRectOffset=z,
}

return A
else
return"rbxassetid://10723434557"
end
else
if q~=nil and m[r]then
local s=m[r]
return s[q]
else
return nil
end
end
end

local function RemoveTable(q,r)
for s,t in pairs(q)do
if tostring(t)==tostring(r)then
table.remove(q,s)
end
end
end

local function Kwargify(q,r)
for s,t in pairs(q)do
if r[s]==nil then
r[s]=t
end
end
return r
end









function tween(q,r,s,t)
if q.ClassName=="UIListLayout"then return end
local u=d:Create(q,t or o,r)
u.Completed:Connect(s or function()end)
u:Play()
end

local function BlurModule(q)
local r=game:GetService'RunService'
local s=workspace.CurrentCamera
local t="Glass"
local u={}
local v=Instance.new('Folder',s)
v.Name='LunaBlur'

local w=99999999
local x=math.random(1,w)

local y=Instance.new('DepthOfFieldEffect',game:GetService'Lighting')
y.FarIntensity=0
y.FocusDistance=51.6
y.InFocusRadius=50
y.NearIntensity=6
y.Name="DPT_"..x

local z=Instance.new'Frame'
z.Parent=q
z.Size=UDim2.new(0.95,0,0.95,0)
z.Position=UDim2.new(0.5,0,0.5,0)
z.AnchorPoint=Vector2.new(0.5,0.5)
z.BackgroundTransparency=1

local A;do
local B=0
function A()
B=B+1
return'neon::'..tostring(B)
end
end

do
local function IsNotNaN(B)
return B==B
end
local B=IsNotNaN(s:ScreenPointToRay(0,0).Origin.x)
while not B do
r.RenderStepped:wait()
B=IsNotNaN(s:ScreenPointToRay(0,0).Origin.x)
end
end

local B;do

local C,D,E,F=math.acos,math.max,math.pi,math.sqrt
local G=0.22
local function DrawTriangle(H,I,J,K,L)

local M=(H-I).magnitude
local N=(I-J).magnitude
local O=(J-H).magnitude
local P=D(M,N,O)
local Q,R,S
if M==P then
Q,R,S=H,I,J
elseif N==P then
Q,R,S=I,J,H
elseif O==P then
Q,R,S=J,H,I
end

local T=((R-Q).x*(S-Q).x+(R-Q).y*(S-Q).y+(R-Q).z*(S-Q).z)/(Q-R).magnitude
local U=F((S-Q).magnitude^2-T*T)
local V=(Q-R).magnitude-T

local W=CFrame.new(R,Q)
local X=CFrame.Angles(E/2,0,0)

local Y=W

local Z=(Y*X).lookVector
local _=Q+CFrame.new(Q,R).lookVector*T
local aa=CFrame.new(_,S).lookVector
local ab=Z.x*aa.x+Z.y*aa.y+Z.z*aa.z

local ac=CFrame.Angles(0,0,C(ab))

Y=Y*ac
if((Y*X).lookVector-aa).magnitude>0.01 then
Y=Y*CFrame.Angles(0,0,-2*C(ab))
end
Y=Y*CFrame.new(0,U/2,-(V+T/2))

local ad=W*ac*CFrame.Angles(0,E,0)
if((ad*X).lookVector-aa).magnitude>0.01 then
ad=ad*CFrame.Angles(0,0,2*C(ab))
end
ad=ad*CFrame.new(0,U/2,V/2)

if not K then
K=Instance.new'Part'
K.FormFactor='Custom'
K.TopSurface=0
K.BottomSurface=0
K.Anchored=true
K.CanCollide=false
K.CastShadow=false
K.Material=t
K.Size=Vector3.new(G,G,G)
local ae=Instance.new('SpecialMesh',K)
ae.MeshType=2
ae.Name='WedgeMesh'
end
K.WedgeMesh.Scale=Vector3.new(0,U/G,T/G)
K.CFrame=Y

if not L then
L=K:clone()
end
L.WedgeMesh.Scale=Vector3.new(0,U/G,V/G)
L.CFrame=ad

return K,L
end

function B(aa,ab,ac,ad,ae)
ae[1],ae[2]=DrawTriangle(aa,ab,ac,ae[1],ae[2])
ae[3],ae[4]=DrawTriangle(ac,ab,ad,ae[3],ae[4])
end
end

if u[z]then
return u[z].parts
end

local aa=A()
local ab={}
local ac=Instance.new('Folder',v)
ac.Name=z.Name

local ad={}
do
local function add(ae)
if ae:IsA'GuiObject'then
ad[#ad+1]=ae
add(ae.Parent)
end
end
add(z)
end

local function UpdateOrientation(ae)
local C={
Transparency=0.98;
BrickColor=BrickColor.new'Institutional white';
}
local D=1-0.05*z.ZIndex

local E,F=z.AbsolutePosition,z.AbsolutePosition+z.AbsoluteSize
local G,H=Vector2.new(F.x,E.y),Vector2.new(E.x,F.y)
do
local I=0;
for J,K in ipairs(ad)do
I=I+K.Rotation
end
if I~=0 and I%180~=0 then
local J=E:lerp(F,0.5)
local K,L=math.sin(math.rad(I)),math.cos(math.rad(I))

E=Vector2.new(L*(E.x-J.x)-K*(E.y-J.y),K*(E.x-J.x)+L*(E.y-J.y))+J
G=Vector2.new(L*(G.x-J.x)-K*(G.y-J.y),K*(G.x-J.x)+L*(G.y-J.y))+J
H=Vector2.new(L*(H.x-J.x)-K*(H.y-J.y),K*(H.x-J.x)+L*(H.y-J.y))+J
F=Vector2.new(L*(F.x-J.x)-K*(F.y-J.y),K*(F.x-J.x)+L*(F.y-J.y))+J
end
end
B(
s:ScreenPointToRay(E.x,E.y,D).Origin,
s:ScreenPointToRay(G.x,G.y,D).Origin,
s:ScreenPointToRay(H.x,H.y,D).Origin,
s:ScreenPointToRay(F.x,F.y,D).Origin,
ab
)
if ae then
for I,J in pairs(ab)do
J.Parent=ac
end
for I,J in pairs(C)do
for K,L in pairs(ab)do
L[I]=J
end
end
end

end

UpdateOrientation(true)
r:BindToRenderStep(aa,2000,UpdateOrientation)
end

local function unpackt(aa:table)

local ab=""
local ac=0
for ad,ae in pairs(aa)do
if ac<3 then
ab=ab..ae..", "
ac+=1
else
ab="Various"
break
end
end

return ab
end


local aa=l and script.Parent:WaitForChild"Luna UI"or game:GetObjects"rbxassetid://86467455075715"[1]

local ab

local function Hide(ac,ad,ae)
ab=ac.Size
ad=string.split(tostring(ad),"Enum.KeyCode.")
ad=ad[2]
if ae then
b:Notification{Title="Interface Hidden",Content="The interface has been hidden, you may reopen the interface by Pressing the UI Bind In Settings ("..tostring(ad)..")",Icon="visibility_off"}
end
tween(ac,{BackgroundTransparency=1})
tween(ac.Elements,{BackgroundTransparency=1})
tween(ac.Line,{BackgroundTransparency=1})
tween(ac.Title.Title,{TextTransparency=1})
tween(ac.Title.subtitle,{TextTransparency=1})
tween(ac.Logo,{ImageTransparency=1})
tween(ac.Navigation.Line,{BackgroundTransparency=1})

for q,r in ipairs(ac.Controls:GetChildren())do
if r.ClassName=="Frame"then
tween(r,{BackgroundTransparency=1})
tween(r.UIStroke,{Transparency=1})
tween(r.ImageLabel,{ImageTransparency=1})
r.Visible=false
end
end
for q,r in ipairs(ac.Navigation.Tabs:GetChildren())do
if r.ClassName=="Frame"and r.Name~="InActive Template"then
d:Create(r,TweenInfo.new(0.3,Enum.EasingStyle.Exponential),{BackgroundTransparency=1}):Play()
d:Create(r.ImageLabel,TweenInfo.new(0.3,Enum.EasingStyle.Exponential),{ImageTransparency=1}):Play()
d:Create(r.DropShadowHolder.DropShadow,TweenInfo.new(0.3,Enum.EasingStyle.Exponential),{ImageTransparency=1}):Play()
d:Create(r.UIStroke,TweenInfo.new(0.3,Enum.EasingStyle.Exponential),{Transparency=1}):Play()
end
end

task.wait(0.28)
ac.Size=UDim2.new(0,0,0,0)
ac.Parent.ShadowHolder.Visible=false
task.wait()
ac.Elements.Parent.Visible=false
ac.Visible=false
end


if gethui then
aa.Parent=gethui()
elseif syn and syn.protect_gui then
syn.protect_gui(aa)
aa.Parent=k
elseif not l and k:FindFirstChild"RobloxGui"then
aa.Parent=k:FindFirstChild"RobloxGui"
elseif not l then
aa.Parent=k
end

if gethui then
for ac,ad in ipairs(gethui():GetChildren())do
if ad.Name==aa.Name and ad~=aa then
Hide(ad.SmartWindow)
ad.Enabled=false
ad.Name="Luna-Old"
end
end
elseif not l then
for ac,ad in ipairs(k:GetChildren())do
if ad.Name==aa.Name and ad~=aa then
Hide(ad.SmartWindow)
ad.Enabled=false
ad.Name="Luna-Old"
end
end
end

aa.Enabled=false
aa.SmartWindow.Visible=false
aa.Notifications.Template.Visible=false
aa.DisplayOrder=1000000000

local ac:Frame=aa.SmartWindow
local ad=ac.Drag
local ae=aa.Drag
local q=ae and ae.Interact or nil
local r=ae and ae.Drag or nil
local s=ac.Elements.Interactions
local t=ac.LoadingFrame
local u=ac.Navigation local v=
u.Tabs
local w=aa.Notifications
local x:Frame=ac.KeySystem





















































































local function Draggable(y,z,A,B)
pcall(function()
local C,D,E,F

local function connectFunctions()
if ae and A then
ae.MouseEnter:Connect(function()
if not C then
d:Create(r,TweenInfo.new(0.25,Enum.EasingStyle.Back,Enum.EasingDirection.Out),{BackgroundTransparency=0.5,Size=UDim2.new(0,120,0,4)}):Play()
end
end)

ae.MouseLeave:Connect(function()
if not C then
d:Create(r,TweenInfo.new(0.25,Enum.EasingStyle.Back,Enum.EasingDirection.Out),{BackgroundTransparency=0.7,Size=UDim2.new(0,100,0,4)}):Play()
end
end)
end
end

connectFunctions()

y.InputBegan:Connect(function(G)
if G.UserInputType==Enum.UserInputType.MouseButton1 or G.UserInputType==Enum.UserInputType.Touch then
C=true
E=G.Position
F=z.Position

if A then
d:Create(r,TweenInfo.new(0.35,Enum.EasingStyle.Back,Enum.EasingDirection.Out),{Size=UDim2.new(0,110,0,4),BackgroundTransparency=0}):Play()
end

G.Changed:Connect(function()
if G.UserInputState==Enum.UserInputState.End then
C=false
connectFunctions()

if A then
d:Create(r,TweenInfo.new(0.35,Enum.EasingStyle.Back,Enum.EasingDirection.Out),{Size=UDim2.new(0,100,0,4),BackgroundTransparency=0.7}):Play()
end
end
end)
end
end)

y.InputChanged:Connect(function(G)
if G.UserInputType==Enum.UserInputType.MouseMovement or G.UserInputType==Enum.UserInputType.Touch then
D=G
end
end)

c.InputChanged:Connect(function(G)
if G==D and C then
local H=G.Position-E

local I=UDim2.new(F.X.Scale,F.X.Offset+H.X,F.Y.Scale,F.Y.Offset+H.Y)
d:Create(z,TweenInfo.new(0.35,Enum.EasingStyle.Exponential,Enum.EasingDirection.Out),{Position=I}):Play()

if ae then
local J=UDim2.new(F.X.Scale,F.X.Offset+H.X,F.Y.Scale,F.Y.Offset+H.Y+240)
ae.Position=J
end
end
end)

end)
end

function b.Notification(y,z)
task.spawn(function()
z=Kwargify({
Title="Missing Title",
Content="Missing or Unknown Content",
Icon="view_in_ar",
ImageSource="Material"
},z or{})


local A=w.Template:Clone()
A.Name=z.Title
A.Parent=w
A.LayoutOrder=#w:GetChildren()
A.Visible=false
BlurModule(A)


A.Title.Text=z.Title
A.Description.Text=z.Content
A.Icon.Image=GetIcon(z.Icon,z.ImageSource)


A.BackgroundTransparency=1
A.Title.TextTransparency=1
A.Description.TextTransparency=1
A.UIStroke.Transparency=1
A.Shadow.ImageTransparency=1
A.Icon.ImageTransparency=1
A.Icon.BackgroundTransparency=1

task.wait()


A.Size=UDim2.new(1,0,0,-w:FindFirstChild"UIListLayout".Padding.Offset)

A.Icon.Size=UDim2.new(0,28,0,28)
A.Icon.Position=UDim2.new(0,16,0.5,-1)

A.Visible=true

A.Description.Size=UDim2.new(1,-65,0,math.huge)
local B=A.Description.TextBounds.Y+55
A.Description.Size=UDim2.new(1,-65,0,B-35)
A.Size=UDim2.new(1,0,0,-w:FindFirstChild"UIListLayout".Padding.Offset)
d:Create(A,TweenInfo.new(0.6,Enum.EasingStyle.Exponential),{Size=UDim2.new(1,0,0,B)}):Play()

task.wait(0.15)
d:Create(A,TweenInfo.new(0.4,Enum.EasingStyle.Exponential),{BackgroundTransparency=0.45}):Play()
d:Create(A.Title,TweenInfo.new(0.3,Enum.EasingStyle.Exponential),{TextTransparency=0}):Play()

task.wait(0.05)

d:Create(A.Icon,TweenInfo.new(0.3,Enum.EasingStyle.Exponential),{ImageTransparency=0}):Play()

task.wait(0.05)
d:Create(A.Description,TweenInfo.new(0.3,Enum.EasingStyle.Exponential),{TextTransparency=0.35}):Play()
d:Create(A.UIStroke,TweenInfo.new(0.4,Enum.EasingStyle.Exponential),{Transparency=0.95}):Play()
d:Create(A.Shadow,TweenInfo.new(0.3,Enum.EasingStyle.Exponential),{ImageTransparency=0.82}):Play()

local C=math.min(math.max((#A.Description.Text*0.1)+2.5,3),10)
task.wait(z.Duration or C)

A.Icon.Visible=false
d:Create(A,TweenInfo.new(0.4,Enum.EasingStyle.Exponential),{BackgroundTransparency=1}):Play()
d:Create(A.UIStroke,TweenInfo.new(0.4,Enum.EasingStyle.Exponential),{Transparency=1}):Play()
d:Create(A.Shadow,TweenInfo.new(0.3,Enum.EasingStyle.Exponential),{ImageTransparency=1}):Play()
d:Create(A.Title,TweenInfo.new(0.3,Enum.EasingStyle.Exponential),{TextTransparency=1}):Play()
d:Create(A.Description,TweenInfo.new(0.3,Enum.EasingStyle.Exponential),{TextTransparency=1}):Play()

d:Create(A,TweenInfo.new(1,Enum.EasingStyle.Exponential),{Size=UDim2.new(1,-90,0,0)}):Play()

task.wait(1)

d:Create(A,TweenInfo.new(1,Enum.EasingStyle.Exponential),{Size=UDim2.new(1,-90,0,-w:FindFirstChild"UIListLayout".Padding.Offset)}):Play()

A.Visible=false
A:Destroy()
end)
end

local function Unhide(y,z)
y.Size=ab
y.Elements.Visible=true
y.Visible=true
task.wait()
tween(y,{BackgroundTransparency=0.2})
tween(y.Elements,{BackgroundTransparency=0.08})
tween(y.Line,{BackgroundTransparency=0})
tween(y.Title.Title,{TextTransparency=0})
tween(y.Title.subtitle,{TextTransparency=0})
tween(y.Logo,{ImageTransparency=0})
tween(y.Navigation.Line,{BackgroundTransparency=0})

for A,B in ipairs(y.Controls:GetChildren())do
if B.ClassName=="Frame"and B.Name~="Theme"then
B.Visible=true
tween(B,{BackgroundTransparency=0.25})
tween(B.UIStroke,{Transparency=0.5})
tween(B.ImageLabel,{ImageTransparency=0.25})
end
end
for A,B in ipairs(y.Navigation.Tabs:GetChildren())do
if B.ClassName=="Frame"and B.Name~="InActive Template"then
if B.Name==z then
d:Create(B,TweenInfo.new(0.3,Enum.EasingStyle.Exponential),{BackgroundTransparency=0}):Play()
d:Create(B.UIStroke,TweenInfo.new(0.3,Enum.EasingStyle.Exponential),{Transparency=0.41}):Play()
end
d:Create(B.ImageLabel,TweenInfo.new(0.3,Enum.EasingStyle.Exponential),{ImageTransparency=0}):Play()
d:Create(B.DropShadowHolder.DropShadow,TweenInfo.new(0.3,Enum.EasingStyle.Exponential),{ImageTransparency=1}):Play()
end
end

end

local y
local z
local A
if j.ViewportSize.X>774 and j.ViewportSize.Y>503 then
y=UDim2.fromOffset(675,424)
z=UDim2.fromOffset(500,42)
else
y=UDim2.fromOffset(j.ViewportSize.X-100,j.ViewportSize.Y-100)
z=UDim2.fromOffset(j.ViewportSize.X-275,42)
end

local function Maximise(B)
B.Controls.ToggleSize.ImageLabel.Image="rbxassetid://10137941941"
tween(B,{Size=y})
B.Elements.Visible=true
B.Navigation.Visible=true
tween(B,{Position=A})
end

local function Minimize(B)
A=B.Position
B.Controls.ToggleSize.ImageLabel.Image="rbxassetid://11036884234"
B.Elements.Visible=false
B.Navigation.Visible=false
tween(B,{Size=z})
end


function b.CreateWindow(B,C)

C=Kwargify({
Name="Luna UI Example Window",
Subtitle="",
LogoID="6031097225",
LoadingEnabled=true,
LoadingTitle="Luna Interface Suite",
LoadingSubtitle="by Nebula Softworks",

ConfigSettings={},

KeySystem=false,
KeySettings={}
},C or{})

C.ConfigSettings=Kwargify({
RootFolder=nil,
ConfigFolder="Big Hub"
},C.ConfigSettings or{})

C.KeySettings=Kwargify({
Title=C.Name,
Subtitle="Key System",
Note="No Instructions",
SaveInRoot=false,
SaveKey=true,
Key={""},
SecondAction={}
},C.KeySettings or{})

C.KeySettings.SecondAction=Kwargify({
Enabled=false,
Type="Discord",
Parameter=""
},C.KeySettings.SecondAction)

local D=false

local E={Bind=Enum.KeyCode.K,CurrentTab=nil,State=true,Size=false,Settings=nil}

ac.Title.Title.Text=C.Name
ac.Title.subtitle.Text=C.Subtitle
ac.Logo.Image="rbxassetid://"..C.LogoID
ac.Visible=true
ac.BackgroundTransparency=1
ac.Size=y
ac.Size=UDim2.fromOffset(ac.Size.X.Offset-70,ac.Size.Y.Offset-55)
ac.Parent.ShadowHolder.Size=ac.Size
t.Frame.Frame.Title.TextTransparency=1
t.Frame.Frame.Subtitle.TextTransparency=1
t.Version.TextTransparency=1
t.Frame.ImageLabel.ImageTransparency=1

tween(s.Parent,{BackgroundTransparency=1})
s.Parent.Visible=false

t.Frame.Frame.Title.Text=C.LoadingTitle
t.Frame.Frame.Subtitle.Text=C.LoadingSubtitle
t.Version.Text=t.Frame.Frame.Title.Text=="Luna Interface Suite"and a or"Luna UI"

u.Player.icon.ImageLabel.Image=h:GetUserThumbnailAsync(h.LocalPlayer.UserId,Enum.ThumbnailType.HeadShot,Enum.ThumbnailSize.Size48x48)
u.Player.Namez.Text=h.LocalPlayer.DisplayName
u.Player.TextLabel.Text=h.LocalPlayer.Name

for F,G in pairs(ac.Controls:GetChildren())do
G.Visible=false
end

ac:GetPropertyChangedSignal"Position":Connect(function()
ac.Parent.ShadowHolder.Position=ac.Position
end)
ac:GetPropertyChangedSignal"Size":Connect(function()
ac.Parent.ShadowHolder.Size=ac.Size
end)

t.Visible=true





















aa.Enabled=true

BlurModule(ac)

if C.KeySystem then
local F=C.KeySettings

Draggable(ad,ac)
Draggable(aa.MobileSupport,aa.MobileSupport)
if ae then Draggable(q,ac,true,255)end

if not C.KeySettings then
D=true
return
end

C.KeySettings.FileName="key"

if typeof(C.KeySettings.Key)=="string"then C.KeySettings.Key={C.KeySettings.Key}end

local G=C.KeySettings.SaveInRoot and"Luna/Configurations/"..C.ConfigSettings.RootFolder.."/"..C.ConfigSettings.ConfigFolder.."/Key System/"or"Luna/Configurations/"..C.ConfigSettings.ConfigFolder.."/Key System/"

if isfile and isfile(G..C.KeySettings.FileName..".luna")then
for H,I in ipairs(C.KeySettings.Key)do
if string.find(readfile(G..C.KeySettings.FileName..".luna"),I)then
D=true
break
end
end
end

if not D then

local H=x.Action.Copy
local I=F.SecondAction.Type

if I=="Discord"then
H=x.Action.Discord
end

local J=math.random(2,5)

x.Visible=true
x.Title.Text=C.KeySettings.Title
x.Subtitle.Text=C.KeySettings.Subtitle
x.textshit.Text=C.KeySettings.Note

if F.SecondAction.Enabled==true then
H.Visible=true
end

H.Interact.MouseButton1Click:Connect(function()
if I=="Discord"then
setclipboard(tostring("https://discord.gg/"..F.SecondAction.Parameter))
if n then
n{
Url='http://127.0.0.1:6463/rpc?v=1',
Method='POST',
Headers={
['Content-Type']='application/json',
Origin='https://discord.com'
},
Body=e:JSONEncode{
cmd='INVITE_BROWSER',
nonce=e:GenerateGUID(false),
args={code=F.SecondAction.Parameter}
}
}
end
else
setclipboard(tostring(F.SecondAction.Parameter))
end
end)

x.Action.Submit.Interact.MouseButton1Click:Connect(function()
if#x.Input.InputBox.Text==0 then return end
local K=false
local L=''
for M,N in ipairs(C.KeySettings.Key)do
if x.Input.InputBox.Text==N then
K=true
L=N
break
end
end
if K then
for M,N in pairs(x:GetDescendants())do
if N.ClassName~="UICorner"and N.ClassName~="UIPadding"then
if N.ClassName~="UIStroke"then
tween(N,{BackgroundTransparency=1},nil,TweenInfo.new(0.6,Enum.EasingStyle.Exponential))
end
if N.ClassName=="ImageButton"then
tween(N,{ImageTransparency=1},nil,TweenInfo.new(0.5,Enum.EasingStyle.Exponential))
end
if N.ClassName=="TextLabel"then
tween(N,{TextTransparency=1},nil,TweenInfo.new(0.4,Enum.EasingStyle.Exponential))
end
if N.ClassName=="UIStroke"then
tween(N,{Transparency=1},nil,TweenInfo.new(0.5,Enum.EasingStyle.Exponential))
end
end
end
tween(x,{BackgroundTransparency=1},nil,TweenInfo.new(0.6,Enum.EasingStyle.Exponential))
task.wait(0.51)
D=true
x.Visible=false
if C.KeySettings.SaveKey then
if writefile then
writefile(G..C.KeySettings.FileName..".luna",L)
end
b:Notification{Title="Key System",Content="The key for this script has been saved successfully.",Icon="lock_open"}
end
else
if J==0 then

game.Players.LocalPlayer:Kick"No Attempts Remaining"
game:Shutdown()
end
x.Input.InputBox.Text="Incorrect Key"
J=J-1
task.wait(0.4)
x.Input.InputBox.Text=""
end
end)

x.Close.MouseButton1Click:Connect(function()

b:Destroy()
end)
end
end

if C.KeySystem then
repeat task.wait()until D
end

if C.LoadingEnabled then
task.wait(0.3)
d:Create(t.Frame.Frame.Title,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{TextTransparency=0}):Play()
d:Create(t.Frame.ImageLabel,TweenInfo.new(0.3,Enum.EasingStyle.Exponential),{ImageTransparency=0}):Play()
task.wait(0.05)
d:Create(t.Frame.Frame.Subtitle,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{TextTransparency=0}):Play()
d:Create(t.Version,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{TextTransparency=0}):Play()
task.wait(0.29)
d:Create(t.Frame.ImageLabel,TweenInfo.new(1.7,Enum.EasingStyle.Back,Enum.EasingDirection.Out,2,false,0.2),{Rotation=450}):Play()

task.wait(3.32)

d:Create(t.Frame.Frame.Title,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{TextTransparency=1}):Play()
d:Create(t.Frame.ImageLabel,TweenInfo.new(0.3,Enum.EasingStyle.Exponential),{ImageTransparency=1}):Play()
task.wait(0.05)
d:Create(t.Frame.Frame.Subtitle,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{TextTransparency=1}):Play()
d:Create(t.Version,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{TextTransparency=1}):Play()
wait(0.3)
d:Create(t,TweenInfo.new(0.5,Enum.EasingStyle.Exponential,Enum.EasingDirection.Out),{BackgroundTransparency=1}):Play()
end

d:Create(ac,TweenInfo.new(0.5,Enum.EasingStyle.Exponential,Enum.EasingDirection.Out),{BackgroundTransparency=0.2,Size=y}):Play()
d:Create(ac.Parent.ShadowHolder,TweenInfo.new(0.5,Enum.EasingStyle.Exponential,Enum.EasingDirection.Out),{Size=y}):Play()
d:Create(ac.Title.Title,TweenInfo.new(0.35,Enum.EasingStyle.Exponential,Enum.EasingDirection.Out),{TextTransparency=0}):Play()
d:Create(ac.Title.subtitle,TweenInfo.new(0.35,Enum.EasingStyle.Exponential,Enum.EasingDirection.Out),{TextTransparency=0}):Play()
d:Create(ac.Logo,TweenInfo.new(0.35,Enum.EasingStyle.Exponential,Enum.EasingDirection.Out),{ImageTransparency=0}):Play()
d:Create(u.Player.icon.ImageLabel,TweenInfo.new(0.35,Enum.EasingStyle.Exponential,Enum.EasingDirection.Out),{ImageTransparency=0}):Play()
d:Create(u.Player.icon.UIStroke,TweenInfo.new(0.35,Enum.EasingStyle.Exponential,Enum.EasingDirection.Out),{Transparency=0}):Play()
d:Create(ac.Line,TweenInfo.new(0.35,Enum.EasingStyle.Exponential,Enum.EasingDirection.Out),{BackgroundTransparency=0}):Play()
wait(0.4)
t.Visible=false

Draggable(ad,ac)
Draggable(aa.MobileSupport,aa.MobileSupport)
if ae then Draggable(q,ac,true,255)end

s.Template.LayoutOrder=1000000000
s.Template.Visible=false
u.Tabs["InActive Template"].LayoutOrder=1000000000
u.Tabs["InActive Template"].Visible=false

local F=true

function E.CreateHomeTab(G,H)

H=Kwargify({
Icon=1,
SupportedExecutors={"Vega X","Delta","Nihon","Xeno"},
DiscordInvite="noinvitelink"
},H or{})

local I={}

local J=u.Tabs.Home
J.Visible=true
if H.Icon==2 then
J.ImageLabel.Image=GetIcon("dashboard","Material")
end

local K=s.Home
K.Visible=true

function I.Activate(L)
tween(J.ImageLabel,{ImageColor3=Color3.fromRGB(255,255,255)})
tween(J,{BackgroundTransparency=0})
tween(J.UIStroke,{Transparency=0.41})

s.UIPageLayout:JumpTo(K)

task.wait(0.05)

for M,N in ipairs(u.Tabs:GetChildren())do
if N.Name~="InActive Template"and N.ClassName=="Frame"and N~=J then
tween(N.ImageLabel,{ImageColor3=Color3.fromRGB(221,221,221)})
tween(N,{BackgroundTransparency=1})
tween(N.UIStroke,{Transparency=1})
end

end

E.CurrentTab="Home"
end

I:Activate()
F=false
J.Interact.MouseButton1Click:Connect(function()
I:Activate()
end)


K.icon.ImageLabel.Image=h:GetUserThumbnailAsync(h.LocalPlayer.UserId,Enum.ThumbnailType.HeadShot,Enum.ThumbnailSize.Size420x420)
K.player.Text.Text="Hello, "..h.LocalPlayer.DisplayName
K.player.user.Text=h.LocalPlayer.Name.." - "..C.Name

K.detailsholder.dashboard.Client.Title.Text=(l and"Debugging (Studio)"or identifyexecutor())or"Your Executor Does Not Support identifyexecutor."
for L,M in pairs(H.SupportedExecutors)do
if l then K.detailsholder.dashboard.Client.Subtitle.Text="Luna Interface Suite - Debugging Mode"break end
if M==identifyexecutor()then
K.detailsholder.dashboard.Client.Subtitle.Text="Your Executor Supports This Script."
break
else
K.detailsholder.dashboard.Client.Subtitle.Text="Your Executor Isn't Officialy Supported By This Script."
break
end
end



K.detailsholder.dashboard.Discord.Interact.MouseButton1Click:Connect(function()
setclipboard(tostring("https://discord.gg/"..H.DiscordInvite))
if n then
n{
Url='http://127.0.0.1:6463/rpc?v=1',
Method='POST',
Headers={
['Content-Type']='application/json',
Origin='https://discord.com'
},
Body=e:JSONEncode{
cmd='INVITE_BROWSER',
nonce=e:GenerateGUID(false),
args={code=H.DiscordInvite}
}
}
end
end)

local L=0
local function getPing()return math.clamp(game:GetService"Stats".Network.ServerStatsItem["Data Ping"]:GetValue(),10,700)end

local function checkFriends()
if L==0 then

L=25

local M={}
local N=0
local O=0
local P=0

local Q=h:GetFriendsAsync(i.UserId)
while true do
for R,S in Q:GetCurrentPage()do
N+=1
table.insert(M,Data)
end

if Q.IsFinished then

break
else

Q:AdvanceToNextPageAsync()
end
end
for R,S in pairs(i:GetFriendsOnline())do
O+=1
end

for R,S in pairs(M)do
if h:FindFirstChild(S.Username)then
P=P+1
end
end

K.detailsholder.dashboard.Friends.All.Value.Text=tostring(N).." friends"
K.detailsholder.dashboard.Friends.Offline.Value.Text=tostring(N-O).." friends"
K.detailsholder.dashboard.Friends.Online.Value.Text=tostring(O).." friends"
K.detailsholder.dashboard.Friends.InGame.Value.Text=tostring(P).." friends"

else
L-=1
end
end

local function format(M)
return string.format("%02i",M)
end

local function convertToHMS(M)
local N=(M-M%60)/60
M=M-N*60
local O=(N-N%60)/60
N=N-O*60
return format(O)..":"..format(N)..":"..format(M)
end

coroutine.wrap(function()
while task.wait()do



K.detailsholder.dashboard.Server.Players.Value.Text=#h:GetPlayers().." playing"
K.detailsholder.dashboard.Server.MaxPlayers.Value.Text=h.MaxPlayers.." players can join this server"


K.detailsholder.dashboard.Server.Latency.Value.Text=l and tostring(math.round((h.LocalPlayer:GetNetworkPing()*2)/0.01)).."ms"or tostring(math.floor(getPing()).."ms")


K.detailsholder.dashboard.Server.Time.Value.Text=convertToHMS(time())


K.detailsholder.dashboard.Server.Region.Value.Text=g:GetCountryRegionForPlayerAsync(h.LocalPlayer)

checkFriends()
end
end)()



end

function E.CreateTab(G,H)

local I={}

H=Kwargify({
Name="Tab",
ShowTitle=true,
Icon="view_in_ar",
ImageSource="Material"
},H or{})

local J=u.Tabs["InActive Template"]:Clone()

J.Name=H.Name
J.TextLabel.Text=H.Name
J.Parent=u.Tabs
J.ImageLabel.Image=GetIcon(H.Icon,H.ImageSource)

J.Visible=true

local K=s.Template:Clone()
K.Name=H.Name
K.Title.Visible=H.ShowTitle
K.Title.Text=H.Name
K.Visible=true

I.Page=K

if H.ShowTitle==false then
K.UIPadding.PaddingTop=UDim.new(0,10)
end

K.LayoutOrder=#s:GetChildren()-3

for L,M in ipairs(K:GetChildren())do
if M.ClassName=="Frame"or M.ClassName=="TextLabel"and M.Name~="Title"then
M:Destroy()
end
end
K.Parent=s

function I.Activate(L)
tween(J.ImageLabel,{ImageColor3=Color3.fromRGB(255,255,255)})
tween(J,{BackgroundTransparency=0})
tween(J.UIStroke,{Transparency=0.41})

s.UIPageLayout:JumpTo(K)

task.wait(0.05)

for M,N in ipairs(u.Tabs:GetChildren())do
if N.Name~="InActive Template"and N.ClassName=="Frame"and N~=J then
tween(N.ImageLabel,{ImageColor3=Color3.fromRGB(221,221,221)})
tween(N,{BackgroundTransparency=1})
tween(N.UIStroke,{Transparency=1})
end

end

E.CurrentTab=H.Name
end

if F then
I:Activate()
end

task.wait(0.01)

J.Interact.MouseButton1Click:Connect(function()
I:Activate()
end)

F=false


function I.AddSection(L,M:string)

local N={}

if M==nil then M="Section"end

N.Name=M

local O=s.Template.Section:Clone()
O.Text=M
O.Visible=true
O.Parent=K
local P=O.Frame

O.TextTransparency=1
tween(O,{TextTransparency=0})

function N.Set(Q,R)
O.Text=R
end

function N.Destroy(Q)
O:Destroy()
end


function N.CreateDivider(Q)
P.Position=UDim2.new(0,0,0,28)
local R=s.Template.Divider:Clone()
R.Parent=P
R.Size=UDim2.new(1,0,0,18)
R.Line.BackgroundTransparency=1
tween(R.Line,{BackgroundTransparency=0})
end


function N.AddButton(Q,R)
P.Position=UDim2.new(0,0,0,28)

R=Kwargify({
Name="Button",
Description=nil,
Callback=function()

end,
},R or{})

local S={
Hover=false,
Settings=R
}


local T
if R.Description==nil and R.Description~=""then
T=s.Template.Button:Clone()
else
T=s.Template.ButtonDesc:Clone()
end
T.Name=R.Name
T.Title.Text=R.Name
if R.Description~=nil and R.Description~=""then
T.Desc.Text=R.Description
end
T.Visible=true
T.Parent=P

T.UIStroke.Transparency=1
T.Title.TextTransparency=1
if R.Description~=nil and R.Description~=""then
T.Desc.TextTransparency=1
end

d:Create(T,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundTransparency=0.5}):Play()
d:Create(T.UIStroke,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{Transparency=0.5}):Play()
d:Create(T.Title,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{TextTransparency=0}):Play()
if R.Description~=nil and R.Description~=""then
d:Create(T.Desc,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{TextTransparency=0}):Play()
end

T.Interact.MouseButton1Click:Connect(function()
local U,V=pcall(R.Callback)

if not U then
d:Create(T,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundTransparency=0}):Play()
d:Create(T,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundColor3=Color3.fromRGB(85,0,0)}):Play()
d:Create(T.UIStroke,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{Transparency=1}):Play()
T.Title.Text="Callback Error"
print("Luna Interface Suite | "..R.Name.." Callback Error "..tostring(V))
wait(0.5)
T.Title.Text=R.Name
d:Create(T,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundTransparency=0.5}):Play()
d:Create(T,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundColor3=Color3.fromRGB(32,30,38)}):Play()
d:Create(T.UIStroke,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{Transparency=0.5}):Play()
else
tween(T.UIStroke,{Color=Color3.fromRGB(136,131,163)})
wait(0.2)
if S.Hover then
tween(T.UIStroke,{Color=Color3.fromRGB(87,84,104)})
else
tween(T.UIStroke,{Color=Color3.fromRGB(64,61,76)})
end
end
end)

T.MouseEnter:Connect(function()
S.Hover=true
tween(T.UIStroke,{Color=Color3.fromRGB(87,84,104)})
end)

T.MouseLeave:Connect(function()
S.Hover=false
tween(T.UIStroke,{Color=Color3.fromRGB(64,61,76)})
end)

function S.Set(U,V)
V=Kwargify({
Name=R.Name,
Description=R.Description,
Callback=R.Callback
},V or{})

R=V
S.Settings=V

T.Name=R.Name
T.Title.Text=R.Name
if R.Description~=nil and R.Description~=""and T.Desc~=nil then
T.Desc.Text=R.Description
end
end

function S.Destroy(U)
T.Visible=false
T:Destroy()
end

return S
end


function N.AddLabel(Q,R)
P.Position=UDim2.new(0,0,0,28)

local S={}

R=Kwargify({
Text="Label",
Style=1
},R or{})

S.Settings=R

local T
if R.Style==1 then
T=s.Template.Label:Clone()
elseif R.Style==2 then
T=s.Template.Info:Clone()
elseif R.Style==3 then
T=s.Template.Warn:Clone()
end

T.Text.Text=R.Text
T.Visible=true
T.Parent=P

T.BackgroundTransparency=1
T.UIStroke.Transparency=1
T.Text.TextTransparency=1

if R.Style~=1 then
d:Create(T,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundTransparency=0.8}):Play()
else
d:Create(T,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundTransparency=1}):Play()
end
d:Create(T.UIStroke,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{Transparency=0.5}):Play()
d:Create(T.Text,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{TextTransparency=0}):Play()

function S.Set(U,V)
R.Text=V
S.Settings=R
T.Text.Text=V
end

function S.Destroy(U)
T.Visible=false
T:Destroy()
end

return S
end


function N.AddParagraph(Q,R)
P.Position=UDim2.new(0,0,0,28)

R=Kwargify({
Title="Paragraph",
Text="Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus venenatis lacus sed tempus eleifend. Mauris interdum bibendum felis, in tempor augue egestas vel. Praesent tristique consectetur ex, eu pretium sem placerat non. Vestibulum a nisi sit amet augue facilisis consectetur sit amet et nunc. Integer fermentum ornare cursus. Pellentesque sed ultricies metus, ut egestas metus. Vivamus auctor erat ac sapien vulputate, nec ultricies sem tempor. Quisque leo lorem, faucibus nec pulvinar nec, congue eu velit. Duis sodales massa efficitur imperdiet ultrices. Donec eros ipsum, ornare pharetra purus aliquam, tincidunt elementum nisi. Ut mi tortor, feugiat eget nunc vitae, facilisis interdum dui. Vivamus ullamcorper nunc dui, a dapibus nisi pretium ac. Integer eleifend placerat nibh, maximus malesuada tellus. Cras in justo in ligula scelerisque suscipit vel vitae quam."
},R or{})

local S={
Settings=R
}

local T=s.Template.Paragraph:Clone()
T.Title.Text=R.Title
T.Text.Text=R.Text
T.Visible=true
T.Parent=P

T.BackgroundTransparency=1
T.UIStroke.Transparency=1
T.Title.TextTransparency=1
T.Text.TextTransparency=1

d:Create(T,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundTransparency=1}):Play()
d:Create(T.UIStroke,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{Transparency=0.5}):Play()
d:Create(T.Title,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{TextTransparency=0}):Play()
d:Create(T.Text,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{TextTransparency=0}):Play()

function S.Update(U)
T.Text.Size=UDim2.new(T.Text.Size.X.Scale,T.Text.Size.X.Offset,0,math.huge)
T.Text.Size=UDim2.new(T.Text.Size.X.Scale,T.Text.Size.X.Offset,0,T.Text.TextBounds.Y)
tween(T,{Size=UDim2.new(T.Size.X.Scale,T.Size.X.Offset,0,T.Text.TextBounds.Y+40)})
end

function S.Set(U,V)

V=Kwargify({
Title=R.Title,
Text=R.Text
},V or{})

S.Settings=V

T.Title.Text=V.Title
T.Text.Text=V.Text

S:Update()

end

function S.Destroy(U)
T.Visible=false
T:Destroy()
end

S:Update()

return S
end


function N.AddSlider(Q,R,S)
P.Position=UDim2.new(0,0,0,28)
local T={IgnoreConfig=false,Class="Slider",Settings=R}

R=Kwargify({
Name="Slider",
Range={0,200},
Increment=1,
CurrentValue=100,
Callback=function(U)

end,
},R or{})

local U=false
local V=s.Template.Slider:Clone()
V.Name=R.Name.." - Slider"
V.Title.Text=R.Name
V.Visible=true
V.Parent=P

V.BackgroundTransparency=1
V.UIStroke.Transparency=1
V.Title.TextTransparency=1

d:Create(V,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundTransparency=0.5}):Play()
d:Create(V.UIStroke,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{Transparency=0.5}):Play()
d:Create(V.Title,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{TextTransparency=0}):Play()

V.Main.Progress.Size=UDim2.new(0,V.Main.AbsoluteSize.X*((R.CurrentValue+R.Range[1])/(R.Range[2]-R.Range[1]))>5 and V.Main.AbsoluteSize.X*(R.CurrentValue/(R.Range[2]-R.Range[1]))or 5,1,0)

V.Value.Text=tostring(R.CurrentValue)
T.CurrentValue=V.Value.Text

R.Callback(R.CurrentValue)

V.MouseEnter:Connect(function()
tween(V.UIStroke,{Color=Color3.fromRGB(87,84,104)})
end)

V.MouseLeave:Connect(function()
tween(V.UIStroke,{Color=Color3.fromRGB(64,61,76)})
end)

V.Interact.InputBegan:Connect(function(W)
if W.UserInputType==Enum.UserInputType.MouseButton1 or W.UserInputType==Enum.UserInputType.Touch then
U=true
end
end)

V.Interact.InputEnded:Connect(function(W)
if W.UserInputType==Enum.UserInputType.MouseButton1 or W.UserInputType==Enum.UserInputType.Touch then
U=false
end
end)

V.Interact.MouseButton1Down:Connect(function()
local W=V.Main.Progress.AbsolutePosition.X+V.Main.Progress.AbsoluteSize.X
local X=W
local Y
local Z;Z=f.Stepped:Connect(function()
if U then
Y=c:GetMouseLocation().X
W=W+0.025*(Y-X)

if Y<V.Main.AbsolutePosition.X then
Y=V.Main.AbsolutePosition.X
elseif Y>V.Main.AbsolutePosition.X+V.Main.AbsoluteSize.X then
Y=V.Main.AbsolutePosition.X+V.Main.AbsoluteSize.X
end

if W<V.Main.AbsolutePosition.X+5 then
W=V.Main.AbsolutePosition.X+5
elseif W>V.Main.AbsolutePosition.X+V.Main.AbsoluteSize.X then
W=V.Main.AbsolutePosition.X+V.Main.AbsoluteSize.X
end

if W<=Y and(Y-X)<0 then
X=Y
elseif W>=Y and(Y-X)>0 then
X=Y
end
V.Main.Progress.Size=UDim2.new(0,Y-V.Main.AbsolutePosition.X,1,0)
local _=R.Range[1]+(Y-V.Main.AbsolutePosition.X)/V.Main.AbsoluteSize.X*(R.Range[2]-R.Range[1])

_=math.floor(_/R.Increment+0.5)*(R.Increment*10000000)/10000000

V.Value.Text=tostring(_)

if R.CurrentValue~=_ then
local af,ag=pcall(function()
R.Callback(_)
end)
if not af then
d:Create(V,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundTransparency=0}):Play()
d:Create(V,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundColor3=Color3.fromRGB(85,0,0)}):Play()
d:Create(V.UIStroke,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{Transparency=1}):Play()
V.Title.Text="Callback Error"
print("Luna Interface Suite | "..R.Name.." Callback Error "..tostring(ag))
wait(0.5)
V.Title.Text=R.Name
d:Create(V,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundTransparency=0.5}):Play()
d:Create(V,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundColor3=Color3.fromRGB(32,30,38)}):Play()
d:Create(V.UIStroke,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{Transparency=0.5}):Play()
end

R.CurrentValue=_
T.CurrentValue=R.CurrentValue

end
else
d:Create(V.Main.Progress,TweenInfo.new(0.1,Enum.EasingStyle.Back,Enum.EasingDirection.In,0,false),{Size=UDim2.new(0,Y-V.Main.AbsolutePosition.X>5 and Y-V.Main.AbsolutePosition.X or 5,1,0)}):Play()
Z:Disconnect()
end
end)
end)

local function Set(af,ag)

af=af or R.CurrentValue

d:Create(V.Main.Progress,TweenInfo.new(0.3,Enum.EasingStyle.Back,Enum.EasingDirection.InOut),{Size=UDim2.new(0,V.Main.AbsoluteSize.X*((af+R.Range[1])/(R.Range[2]-R.Range[1]))>5 and V.Main.AbsoluteSize.X*(af/(R.Range[2]-R.Range[1]))or 5,1,0)}):Play()
if not ag then V.Value.Text=tostring(af)end
local W,X=pcall(function()
R.Callback(af)
end)
if not W then
d:Create(V,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundTransparency=0}):Play()
d:Create(V,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundColor3=Color3.fromRGB(85,0,0)}):Play()
d:Create(V.UIStroke,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{Transparency=1}):Play()
V.Title.Text="Callback Error"
print("Luna Interface Suite | "..R.Name.." Callback Error "..tostring(X))
wait(0.5)
V.Title.Text=R.Name
d:Create(V,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundTransparency=0.5}):Play()
d:Create(V,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundColor3=Color3.fromRGB(30,33,40)}):Play()
d:Create(V.UIStroke,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{Transparency=0.5}):Play()
end

R.CurrentValue=af
T.CurrentValue=R.CurrentValue


end

function T.UpdateValue(af,ag)
Set(tonumber(ag))
end

V.Value:GetPropertyChangedSignal"Text":Connect(function()
local af=V.Value.Text
if not tonumber(af)and af~="."then
V.Value.Text=af:match"[0-9.]*"or""
end
if R.Range[2]<(tonumber(V.Value.Text)or 0)then V.Value.Text=R.Range[2]end
V.Value.Size=UDim2.fromOffset(V.Value.TextBounds.X,23)
Set(tonumber(V.Value.Text),true)
end)

function T.Set(af,ag)
ag=Kwargify({
Name=R.Name,
Range=R.Range,
Increment=R.Increment,
CurrentValue=R.CurrentValue,
Callback=R.Callback
},ag or{})

R=ag
T.Settings=ag

V.Name=R.Name.." - Slider"
V.Title.Text=R.Name

Set()


end

function T.Destroy(af)
V.Visible=false
V:Destroy()
end

if S then
b.Options[S]=T
end

aa.ThemeRemote:GetPropertyChangedSignal"Value":Connect(function()
V.Main.color.Color=b.ThemeGradient
V.Main.UIStroke.color.Color=b.ThemeGradient
end)

return T

end


function N.AddToggle(af,ag,Q)
P.Position=UDim2.new(0,0,0,28)
local R={IgnoreConfig=false,Class="Toggle"}

ag=Kwargify({
Name="Toggle",
Description=nil,
CurrentValue=false,
Callback=function(S)
end,
},ag or{})


local S

if ag.Description~=nil and ag.Description~=""then
S=s.Template.ToggleDesc:Clone()
else
S=s.Template.Toggle:Clone()
end

S.Visible=true
S.Parent=P

S.Name=ag.Name.." - Toggle"
S.Title.Text=ag.Name
if ag.Description~=nil and ag.Description~=""then
S.Desc.Text=ag.Description
end

S.UIStroke.Transparency=1
S.Title.TextTransparency=1
if ag.Description~=nil and ag.Description~=""then
S.Desc.TextTransparency=1
end

d:Create(S,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundTransparency=0.5}):Play()
if ag.Description~=nil and ag.Description~=""then
d:Create(S.Desc,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{TextTransparency=0}):Play()
end
d:Create(S.UIStroke,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{Transparency=0.5}):Play()
d:Create(S.Title,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{TextTransparency=0}):Play()

local function Set(T)
if T then
S.toggle.color.Enabled=true
tween(S.toggle,{BackgroundTransparency=0})

S.toggle.UIStroke.color.Enabled=true
tween(S.toggle.UIStroke,{Color=Color3.new(255,255,255)})

tween(S.toggle.val,{BackgroundColor3=Color3.fromRGB(255,255,255),Position=UDim2.new(1,-23,0.5,0),BackgroundTransparency=0.45})
else
S.toggle.color.Enabled=false
S.toggle.UIStroke.color.Enabled=false

S.toggle.UIStroke.Color=Color3.fromRGB(97,97,97)

tween(S.toggle,{BackgroundTransparency=1})

tween(S.toggle.val,{BackgroundColor3=Color3.fromRGB(97,97,97),Position=UDim2.new(0,5,0.5,0),BackgroundTransparency=0})
end

R.CurrentValue=T
end

S.Interact.MouseButton1Click:Connect(function()
ag.CurrentValue=not ag.CurrentValue
Set(ag.CurrentValue)

local T,U=pcall(function()
ag.Callback(ag.CurrentValue)
end)
if not T then
d:Create(S,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundTransparency=0}):Play()
d:Create(S,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundColor3=Color3.fromRGB(85,0,0)}):Play()
d:Create(S.UIStroke,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{Transparency=1}):Play()
S.Title.Text="Callback Error"
print("Luna Interface Suite | "..ag.Name.." Callback Error "..tostring(U))
wait(0.5)
S.Title.Text=ag.Name
d:Create(S,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundTransparency=0.5}):Play()
d:Create(S,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundColor3=Color3.fromRGB(32,30,38)}):Play()
d:Create(S.UIStroke,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{Transparency=0.5}):Play()
end
end)

S.MouseEnter:Connect(function()
tween(S.UIStroke,{Color=Color3.fromRGB(87,84,104)})
end)

S.MouseLeave:Connect(function()
tween(S.UIStroke,{Color=Color3.fromRGB(64,61,76)})
end)

if ag.CurrentValue then
Set(ag.CurrentValue)
local T,U=pcall(function()
ag.Callback(ag.CurrentValue)
end)
if not T then
d:Create(S,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundTransparency=0}):Play()
d:Create(S,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundColor3=Color3.fromRGB(85,0,0)}):Play()
d:Create(S.UIStroke,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{Transparency=1}):Play()
S.Title.Text="Callback Error"
print("Luna Interface Suite | "..ag.Name.." Callback Error "..tostring(U))
wait(0.5)
S.Title.Text=ag.Name
d:Create(S,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundTransparency=0.5}):Play()
d:Create(S,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundColor3=Color3.fromRGB(32,30,38)}):Play()
d:Create(S.UIStroke,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{Transparency=0.5}):Play()
end
end

function R.UpdateState(T,U)
ag.CurrentValue=U
Set(ag.CurrentValue)
end

function R.Set(T,U)

U=Kwargify({
Name=ag.Name,
Description=ag.Description,
CurrentValue=ag.CurrentValue,
Callback=ag.Callback
},U or{})

R.Settings=U
ag=U

S.Name=ag.Name.." - Toggle"
S.Title.Text=ag.Name
if ag.Description~=nil and ag.Description~=""and S.Desc~=nil then
S.Desc.Text=ag.Description
end

Set(ag.CurrentValue)

R.CurrentValue=ag.CurrentValue

local V,W=pcall(function()
ag.Callback(ag.CurrentValue)
end)
if not V then
d:Create(S,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundTransparency=0}):Play()
d:Create(S,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundColor3=Color3.fromRGB(85,0,0)}):Play()
d:Create(S.UIStroke,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{Transparency=0}):Play()
S.Title.Text="Callback Error"
print("Luna Interface Suite | "..ag.Name.." Callback Error "..tostring(W))
wait(0.5)
S.Title.Text=ag.Name
d:Create(S,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundTransparency=0.5}):Play()
d:Create(S,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundColor3=Color3.fromRGB(32,30,38)}):Play()
d:Create(S.UIStroke,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{Transparency=0.5}):Play()
end
end

function R.Destroy(T)
S.Visible=false
S:Destroy()
end

aa.ThemeRemote:GetPropertyChangedSignal"Value":Connect(function()
S.toggle.color.Color=b.ThemeGradient
S.toggle.UIStroke.color.Color=b.ThemeGradient
end)

if Q then
b.Options[Q]=R
end

return R

end


function N.AddBind(af,ag,Q)
P.Position=UDim2.new(0,0,0,28)
local R={Class="Keybind",IgnoreConfig=false,Settings=ag,Active=false}

ag=Kwargify({
Name="Bind",
Description=nil,
CurrentBind="Q",
HoldToInteract=false,
Callback=function(S)


end,

OnChangedCallback=function(S)


end,
},ag or{})

local S=false

local T
if ag.Description~=nil and ag.Description~=""then
T=s.Template.BindDesc:Clone()
else
T=s.Template.Bind:Clone()
end

T.Visible=true
T.Parent=P

T.Name=ag.Name
T.Title.Text=ag.Name
if ag.Description~=nil and ag.Description~=""then
T.Desc.Text=ag.Description
end

T.Title.TextTransparency=1
if ag.Description~=nil and ag.Description~=""then
T.Desc.TextTransparency=1
end
T.BindFrame.BackgroundTransparency=1
T.BindFrame.UIStroke.Transparency=1
T.BindFrame.BindBox.TextTransparency=1

d:Create(T,TweenInfo.new(0.3,Enum.EasingStyle.Exponential),{BackgroundTransparency=0.5}):Play()
d:Create(T.Title,TweenInfo.new(0.3,Enum.EasingStyle.Exponential),{TextTransparency=0}):Play()
if ag.Description~=nil and ag.Description~=""then
d:Create(T.Desc,TweenInfo.new(0.3,Enum.EasingStyle.Exponential),{TextTransparency=0}):Play()
end
d:Create(T.BindFrame,TweenInfo.new(0.3,Enum.EasingStyle.Exponential),{BackgroundTransparency=0.9}):Play()
d:Create(T.BindFrame.UIStroke,TweenInfo.new(0.3,Enum.EasingStyle.Exponential),{Transparency=0.3}):Play()
d:Create(T.BindFrame.BindBox,TweenInfo.new(0.3,Enum.EasingStyle.Exponential),{TextTransparency=0}):Play()


T.BindFrame.BindBox.Text=ag.CurrentBind
T.BindFrame.BindBox.Size=UDim2.new(0,T.BindFrame.BindBox.TextBounds.X+20,0,42)

T.BindFrame.BindBox.Focused:Connect(function()
S=true
T.BindFrame.BindBox.Text=""
end)

T.BindFrame.BindBox.FocusLost:Connect(function()
S=false
if T.BindFrame.BindBox.Text==('')then
T.BindFrame.BindBox.Text=ag.CurrentBind
end
end)

T.MouseEnter:Connect(function()
tween(T.UIStroke,{Color=Color3.fromRGB(87,84,104)})
end)

T.MouseLeave:Connect(function()
tween(T.UIStroke,{Color=Color3.fromRGB(64,61,76)})
end)
c.InputBegan:Connect(function(U,V)

if S then
if U.KeyCode~=Enum.KeyCode.Unknown and U.KeyCode~=E.Bind then
local W=string.split(tostring(U.KeyCode),".")
local X=W[3]
T.BindFrame.BindBox.Text=tostring(X)
ag.CurrentBind=tostring(X)
local Y,Z=pcall(function()
ag.Callback(ag.CurrentBind)
end)
if not Y then
d:Create(T,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundTransparency=0}):Play()
d:Create(T,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundColor3=Color3.fromRGB(85,0,0)}):Play()
d:Create(T.UIStroke,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{Transparency=1}):Play()
T.Title.Text="Callback Error"
print("Luna Interface Suite | "..ag.Name.." Callback Error "..tostring(Z))
wait(0.5)
T.Title.Text=ag.Name
d:Create(T,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundTransparency=0.5}):Play()
d:Create(T,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundColor3=Color3.fromRGB(32,30,38)}):Play()
d:Create(T.UIStroke,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{Transparency=0.5}):Play()
end
T.BindFrame.BindBox:ReleaseFocus()
end
elseif ag.CurrentBind~=nil and(U.KeyCode==Enum.KeyCode[ag.CurrentBind]and not V)then
local W=true
local X
X=U.Changed:Connect(function(Y)
if Y=="UserInputState"then
X:Disconnect()
W=false
end
end)

if not ag.HoldToInteract then
R.Active=not R.Active
local Y,Z=pcall(function()
ag.Callback(R.Active)
end)
if not Y then
d:Create(T,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundTransparency=0}):Play()
d:Create(T,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundColor3=Color3.fromRGB(85,0,0)}):Play()
d:Create(T.UIStroke,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{Transparency=1}):Play()
T.Title.Text="Callback Error"
print("Luna Interface Suite | "..ag.Name.." Callback Error "..tostring(Z))
wait(0.5)
T.Title.Text=ag.Name
d:Create(T,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundTransparency=0.5}):Play()
d:Create(T,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundColor3=Color3.fromRGB(32,30,38)}):Play()
d:Create(T.UIStroke,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{Transparency=0.5}):Play()
end
else
wait(0.1)
if W then
local Y;Y=f.Stepped:Connect(function()
if not W then
local Z,_=pcall(function()
ag.Callback(false)
end)
if not Z then
d:Create(T,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundTransparency=0}):Play()
d:Create(T,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundColor3=Color3.fromRGB(85,0,0)}):Play()
d:Create(T.UIStroke,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{Transparency=1}):Play()
T.Title.Text="Callback Error"
print("Luna Interface Suite | "..ag.Name.." Callback Error "..tostring(_))
wait(0.5)
T.Title.Text=ag.Name
d:Create(T,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundTransparency=0.5}):Play()
d:Create(T,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundColor3=Color3.fromRGB(32,30,38)}):Play()
d:Create(T.UIStroke,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{Transparency=0.5}):Play()
end
Y:Disconnect()
else
local Z,_=pcall(function()
ag.Callback(true)
end)
if not Z then
d:Create(T,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundTransparency=0}):Play()
d:Create(T,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundColor3=Color3.fromRGB(85,0,0)}):Play()
d:Create(T.UIStroke,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{Transparency=1}):Play()
T.Title.Text="Callback Error"
print("Luna Interface Suite | "..ag.Name.." Callback Error "..tostring(_))
wait(0.5)
T.Title.Text=ag.Name
d:Create(T,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundTransparency=0.5}):Play()
d:Create(T,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundColor3=Color3.fromRGB(32,30,38)}):Play()
d:Create(T.UIStroke,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{Transparency=0.5}):Play()
end
end
end)
end
end
end
end)

T.BindFrame.BindBox:GetPropertyChangedSignal"Text":Connect(function()
d:Create(T.BindFrame,TweenInfo.new(0.55,Enum.EasingStyle.Exponential,Enum.EasingDirection.Out),{Size=UDim2.new(0,T.BindFrame.BindBox.TextBounds.X+20,0,30)}):Play()
end)

function R.Set(U,V)

V=Kwargify({
Name=ag.Name,
Description=ag.Description,
CurrentBind=ag.CurrentBind,
HoldToInteract=ag.HoldToInteract,
Callback=ag.Callback
},V or{})

R.Settings=V
ag=V

T.Name=ag.Name
T.Title.Text=ag.Name
if ag.Description~=nil and ag.Description~=""and T.Desc~=nil then
T.Desc.Text=ag.Description
end

T.BindFrame.BindBox.Text=ag.CurrentBind
T.BindFrame.Size=UDim2.new(0,T.BindFrame.BindBox.TextBounds.X+20,0,42)


R.CurrentBind=ag.CurrentBind
end

function R.Destroy(U)
T.Visible=false
T:Destroy()
end

if Q then
b.Options[Q]=R
end



return R

end


function N.AddInput(af,ag,Q)
P.Position=UDim2.new(0,0,0,28)
local R={IgnoreConfig=false,Class="Input",Settings=ag}

ag=Kwargify({
Name="Dynamic Input",
Description=nil,
CurrentValue="",
PlaceholderText="Input Placeholder",
RemoveTextAfterFocusLost=false,
Numeric=false,
Enter=false,
MaxCharacters=nil,
Callback=function(S)

end,
},ag or{})

R.CurrentValue=ag.CurrentValue

local S
if ag.Description~=nil and ag.Description~=""then
S=true
end

local T
if S then
T=s.Template.InputDesc:Clone()
else
T=s.Template.Input:Clone()
end

T.Name=ag.Name
T.Title.Text=ag.Name
if S then T.Desc.Text=ag.Description end
T.Visible=true
T.Parent=P

T.BackgroundTransparency=1
T.UIStroke.Transparency=1
T.Title.TextTransparency=1
if S then T.Desc.TextTransparency=1 end
T.InputFrame.BackgroundTransparency=1
T.InputFrame.UIStroke.Transparency=1
T.InputFrame.InputBox.TextTransparency=1

d:Create(T,TweenInfo.new(0.3,Enum.EasingStyle.Exponential),{BackgroundTransparency=0.5}):Play()
d:Create(T.UIStroke,TweenInfo.new(0.3,Enum.EasingStyle.Exponential),{Transparency=0.5}):Play()
d:Create(T.Title,TweenInfo.new(0.3,Enum.EasingStyle.Exponential),{TextTransparency=0}):Play()
if S then d:Create(T.Desc,TweenInfo.new(0.3,Enum.EasingStyle.Exponential),{TextTransparency=0}):Play()end
d:Create(T.InputFrame,TweenInfo.new(0.3,Enum.EasingStyle.Exponential),{BackgroundTransparency=0.9}):Play()
d:Create(T.InputFrame.UIStroke,TweenInfo.new(0.3,Enum.EasingStyle.Exponential),{Transparency=0.3}):Play()
d:Create(T.InputFrame.InputBox,TweenInfo.new(0.3,Enum.EasingStyle.Exponential),{TextTransparency=0}):Play()

T.InputFrame.InputBox.PlaceholderText=ag.PlaceholderText
T.InputFrame.Size=UDim2.new(0,T.InputFrame.InputBox.TextBounds.X+52,0,30)

T.InputFrame.InputBox.FocusLost:Connect(function(U)

if ag.Enter then
if U then
local V,W=pcall(function()
ag.Callback(T.InputFrame.InputBox.Text)
R.CurrentValue=T.InputFrame.InputBox.Text
end)
if not V then
d:Create(T,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundTransparency=0}):Play()
d:Create(T,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundColor3=Color3.fromRGB(85,0,0)}):Play()
d:Create(T.UIStroke,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{Transparency=1}):Play()
T.Title.Text="Callback Error"
print("Luna Interface Suite | "..ag.Name.." Callback Error "..tostring(W))
wait(0.5)
T.Title.Text=ag.Name
d:Create(T,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundTransparency=0.5}):Play()
d:Create(T,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundColor3=Color3.fromRGB(32,30,38)}):Play()
d:Create(T.UIStroke,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{Transparency=0.5}):Play()
end
end
end

if ag.RemoveTextAfterFocusLost then
T.InputFrame.InputBox.Text=""
end

end)

if ag.Numeric then
T.InputFrame.InputBox:GetPropertyChangedSignal"Text":Connect(function()
local U=T.InputFrame.InputBox.Text
if not tonumber(U)and U~="."then
T.InputFrame.InputBox.Text=U:match"[0-9.]*"or""
end
end)
end

T.InputFrame.InputBox:GetPropertyChangedSignal"Text":Connect(function()
if tonumber(ag.MaxCharacters)then
if(#T.InputFrame.InputBox.Text-1)==ag.MaxCharacters then
T.InputFrame.InputBox.Text=T.InputFrame.InputBox.Text:sub(1,ag.MaxCharacters)
end
end
d:Create(T.InputFrame,TweenInfo.new(0.55,Enum.EasingStyle.Exponential,Enum.EasingDirection.Out),{Size=UDim2.new(0,T.InputFrame.InputBox.TextBounds.X+52,0,30)}):Play()
if not ag.Enter then
local U,V=pcall(function()
ag.Callback(T.InputFrame.InputBox.Text)
end)
if not U then
d:Create(T,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundTransparency=0}):Play()
d:Create(T,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundColor3=Color3.fromRGB(85,0,0)}):Play()
d:Create(T.UIStroke,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{Transparency=1}):Play()
T.Title.Text="Callback Error"
print("Luna Interface Suite | "..ag.Name.." Callback Error "..tostring(V))
wait(0.5)
T.Title.Text=ag.Name
d:Create(T,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundTransparency=0.5}):Play()
d:Create(T,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundColor3=Color3.fromRGB(32,30,38)}):Play()
d:Create(T.UIStroke,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{Transparency=0.5}):Play()
end
end
R.CurrentValue=T.InputFrame.InputBox.Text
end)

T.MouseEnter:Connect(function()
tween(T.UIStroke,{Color=Color3.fromRGB(87,84,104)})
end)

T.MouseLeave:Connect(function()
tween(T.UIStroke,{Color=Color3.fromRGB(64,61,76)})
end)


function R.Set(U,V)

V=Kwargify(ag,V or{})

R.Settings=V
ag=V

T.Name=ag.Name
T.Title.Text=ag.Name
if ag.Description~=nil and ag.Description~=""and T.Desc~=nil then
T.Desc.Text=ag.Description
end

T.InputFrame.InputBox:CaptureFocus()
T.InputFrame.InputBox.Text=tostring(ag.CurrentValue)
T.InputFrame.InputBox:ReleaseFocus()
T.InputFrame.Size=UDim2.new(0,T.InputFrame.InputBox.TextBounds.X+52,0,42)

R.CurrentValue=ag.CurrentValue
end

function R.Destroy(U)
T.Visible=false
T:Destroy()
end

if Q then
b.Options[Q]=R
end


return R

end


function N.AddDropdown(af,ag,Q)
P.Position=UDim2.new(0,0,0,28)
local R={IgnoreConfig=false,Class="Dropdown",Settings=ag}

ag=Kwargify({
Name="Dropdown",
Description=nil,
Options={"Option 1","Option 2"},
CurrentOption={"Option 1"},
MultipleOptions=false,
SpecialType=nil,
Callback=function(S)


end,
},ag or{})

R.CurrentOption=ag.CurrentOption

local S=false
if ag.Description~=nil and ag.Description~=""then
S=true
end
local T
local U
if S then
T=48
U=170
elseif not S then
T=38
U=160
end
local V=false

local W
if S then W=s.Template.DropdownDesc:Clone()else W=s.Template.Dropdown:Clone()end

W.Name=ag.Name
W.Title.Text=ag.Name
if S then W.Desc.Text=ag.Description end

W.Parent=P
W.Visible=true

local function Toggle()
V=not V
if V then
tween(W.icon,{Rotation=180})
tween(W,{Size=UDim2.new(1,-25,0,U)})
else
tween(W.icon,{Rotation=0})
tween(W,{Size=UDim2.new(1,-25,0,T)})
end
end

local function SafeCallback(X,Y)
local Z,_=pcall(function()
ag.Callback(X)
end)
if not Z then
d:Create(W,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundTransparency=0}):Play()
d:Create(W,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundColor3=Color3.fromRGB(85,0,0)}):Play()
d:Create(W.UIStroke,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{Transparency=1}):Play()
W.Title.Text="Callback Error"
print("Luna Interface Suite | "..ag.Name.." Callback Error "..tostring(_))
wait(0.5)
W.Title.Text=ag.Name
d:Create(W,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundTransparency=0.5}):Play()
d:Create(W,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundColor3=Color3.fromRGB(32,30,38)}):Play()
d:Create(W.UIStroke,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{Transparency=0.5}):Play()
end
if Z and Y then
Y()
end
end


W.Selected:GetPropertyChangedSignal"Text":Connect(function()
local X=W.Selected.Text:lower()
for Y,Z in ipairs(W.List:GetChildren())do
if Z:IsA"TextLabel"and Z.Name~="Template"then
Z.Visible=X==""or string.find(Z.Name:lower(),X,1,true)~=nil
end
end
end)


local function Clear()
for X,Y in ipairs(W.List:GetChildren())do
if Y.ClassName=="TextLabel"and Y.Name~="Template"then
Y:Destroy()
end
end
end

local function ActivateColorSingle(X)
for Y,Z in pairs(W.List:GetChildren())do
if Z.ClassName=="TextLabel"and Z.Name~="Template"then
tween(Z,{BackgroundTransparency=0.98})
end
end

Toggle()
tween(W.List[X],{BackgroundTransparency=0.95,TextColor3=Color3.fromRGB(240,240,240)})
end

local function Refresh()
Clear()
for X,Y in pairs(ag.Options)do
local Z=W.List.Template:Clone()
local _=false
Z.Text=Y
if Y=="Template"then Y="Template (Name)"end
Z.Name=Y
Z.Interact.MouseButton1Click:Connect(function()
local ah
if ag.MultipleOptions then
if table.find(ag.CurrentOption,Y)then
RemoveTable(ag.CurrentOption,Y)
R.CurrentOption=ag.CurrentOption
if not _ then
tween(Z,{TextColor3=Color3.fromRGB(200,200,200)})
end
tween(Z,{BackgroundTransparency=0.98})
else
table.insert(ag.CurrentOption,Y)
R.CurrentOption=ag.CurrentOption
tween(Z,{TextColor3=Color3.fromRGB(240,240,240),BackgroundTransparency=0.95})
end
ah=ag.CurrentOption
else
ag.CurrentOption={Y}
ah=Y
R.CurrentOption=ah
ActivateColorSingle(Y)
end

SafeCallback(ah,function()
if ag.MultipleOptions then
if ag.CurrentOption and type(ag.CurrentOption)=="table"then
if#ag.CurrentOption==1 then
W.Selected.PlaceholderText=ag.CurrentOption[1]
elseif#ag.CurrentOption==0 then
W.Selected.PlaceholderText="None"
else
W.Selected.PlaceholderText=unpackt(ag.CurrentOption)
end
else
ag.CurrentOption={}
W.Selected.PlaceholderText="None"
end
end
if not ag.MultipleOptions then
W.Selected.PlaceholderText=ag.CurrentOption[1]or"None"
end
W.Selected.Text=""
end)
end)
Z.Visible=true
Z.Parent=W.List
Z.MouseEnter:Connect(function()
_=true
if Z.BackgroundTransparency==0.95 then
return
else
tween(Z,{TextColor3=Color3.fromRGB(240,240,240)})
end
end)
Z.MouseLeave:Connect(function()
_=false
if Z.BackgroundTransparency==0.95 then
return
else
tween(Z,{TextColor3=Color3.fromRGB(200,200,200)})
end
end)
end
end

local function PlayerTableRefresh()
for ah,X in pairs(ag.Options)do
table.remove(ag.Options,ah)
end

for ah,X in pairs(h:GetChildren())do
table.insert(ag.Options,X.Name)
end
end

W.Interact.MouseButton1Click:Connect(function()
Toggle()
end)

W.MouseEnter:Connect(function()
tween(W.UIStroke,{Color=Color3.fromRGB(87,84,104)})
end)

W.MouseLeave:Connect(function()
tween(W.UIStroke,{Color=Color3.fromRGB(64,61,76)})
end)

if ag.SpecialType=="Player"then

for ah,X in pairs(ag.Options)do
table.remove(ag.Options,ah)
end
PlayerTableRefresh()
ag.CurrentOption=ag.Options[1]

h.PlayerAdded:Connect(function()PlayerTableRefresh()end)
h.PlayerRemoving:Connect(function()PlayerTableRefresh()end)

end

Refresh()

if ag.CurrentOption then
if type(ag.CurrentOption)=="string"then
ag.CurrentOption={ag.CurrentOption}
end
if not ag.MultipleOptions and type(ag.CurrentOption)=="table"then
ag.CurrentOption={ag.CurrentOption[1]}
end
else
ag.CurrentOption={}
end

local ah,X=0
for Y,Z in pairs(ag.CurrentOption)do
ah=ah+1
end
if ah==1 then X=ag.CurrentOption[1]else X=ag.CurrentOption end
SafeCallback(X)
if type(X)=="string"then
tween(W.List[X],{TextColor3=Color3.fromRGB(240,240,240),BackgroundTransparency=0.95})
else
for Y,Z in pairs(X)do
tween(W.List[Z],{TextColor3=Color3.fromRGB(240,240,240),BackgroundTransparency=0.95})
end
end

if ag.MultipleOptions then
if ag.CurrentOption and type(ag.CurrentOption)=="table"then
if#ag.CurrentOption==1 then
W.Selected.PlaceholderText=ag.CurrentOption[1]
elseif#ag.CurrentOption==0 then
W.Selected.PlaceholderText="None"
else
W.Selected.PlaceholderText=unpackt(ag.CurrentOption)
end
else
ag.CurrentOption={}
W.Selected.PlaceholderText="None"
end
for Y,Z in pairs(ag.CurrentOption)do
tween(W.List[Z],{TextColor3=Color3.fromRGB(227,227,227),BackgroundTransparency=0.95})
end
else
W.Selected.PlaceholderText=ag.CurrentOption[1]or"None"
end
W.Selected.Text=""

function R.Set(Y,Z)
Z=Kwargify(ag,Z or{})

R.Settings=Z
ag=Z

W.Name=ag.Name
W.Title.Text=ag.Name
if ag.Description~=nil and ag.Description~=""and W.Desc~=nil then
W.Desc.Text=ag.Description
end

if ag.SpecialType=="Player"then

for _,ai in pairs(ag.Options)do
table.remove(ag.Options,_)
end
PlayerTableRefresh()
ag.CurrentOption=ag.Options[1]
h.PlayerAdded:Connect(function()PlayerTableRefresh()end)
h.PlayerRemoving:Connect(function()PlayerTableRefresh()end)

end

Refresh()

if ag.CurrentOption then
if type(ag.CurrentOption)=="string"then
ag.CurrentOption={ag.CurrentOption}
end
if not ag.MultipleOptions and type(ag.CurrentOption)=="table"then
ag.CurrentOption={ag.CurrentOption[1]}
end
else
ag.CurrentOption={}
end

local ai,_=0
for aj,ak in pairs(ag.CurrentOption)do
ai=ai+1
end
if ai==1 then _=ag.CurrentOption[1]else _=ag.CurrentOption end
SafeCallback(_)
for aj,ak in pairs(W.List:GetChildren())do
if ak.ClassName=="TextLabel"then
tween(ak,{TextColor3=Color3.fromRGB(200,200,200),BackgroundTransparency=0.98})
end
end
tween(W.List[_],{TextColor3=Color3.fromRGB(240,240,240),BackgroundTransparency=0.95})

if ag.MultipleOptions then
if ag.CurrentOption and type(ag.CurrentOption)=="table"then
if#ag.CurrentOption==1 then
W.Selected.PlaceholderText=ag.CurrentOption[1]
elseif#ag.CurrentOption==0 then
W.Selected.PlaceholderText="None"
else
W.Selected.PlaceholderText=unpackt(ag.CurrentOption)
end
else
ag.CurrentOption={}
W.Selected.PlaceholderText="None"
end
for aj,ak in pairs(ag.CurrentOption)do
tween(W.List[ak],{TextColor3=Color3.fromRGB(227,227,227),BackgroundTransparency=0.95})
end
else
W.Selected.PlaceholderText=ag.CurrentOption[1]or"None"
end
W.Selected.Text=""



end

function R.Destroy(ai)
W.Visible=false
W:Destroy()
end

if Q then
b.Options[Q]=R
end



return R

end


function N.AddColorPicker(af,ag,ah)
P.Position=UDim2.new(0,0,0,28)
local ai={IgnoreClass=false,Class="Colorpicker",Settings=ag}

ag=Kwargify({
Name="Color Picker",
Color=Color3.fromRGB(255,255,255),
Callback=function(aj)


end
},ag or{})

local function Color3ToHex(aj)
return string.format("#%02X%02X%02X",math.floor(aj.R*255),math.floor(aj.G*255),math.floor(aj.B*255))
end

ai.Color=Color3ToHex(ag.Color)

local aj=UDim2.new(0,75,0,22)
local ak=UDim2.new(0,219,0,129)

local Q=s.Template.ColorPicker:Clone()
local R=Q.CPBackground
local S=R.Display
local T=R.MainCP
local U=Q.ColorSlider

Q.Name=ag.Name
Q.Title.Text=ag.Name
Q.Visible=true
Q.Parent=P
Q.Size=UDim2.new(1.042,-25,0,38)
R.Size=aj
S.BackgroundTransparency=0

Q.MouseEnter:Connect(function()
tween(Q.UIStroke,{Color=Color3.fromRGB(87,84,104)})
end)
Q.MouseLeave:Connect(function()
tween(Q.UIStroke,{Color=Color3.fromRGB(64,61,76)})
end)

local function SafeCallback(V,W)
local X,Y=pcall(function()
ag.Callback(V)
end)
if not X then
d:Create(Q,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundTransparency=0}):Play()
d:Create(Q,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundColor3=Color3.fromRGB(85,0,0)}):Play()
d:Create(Q.UIStroke,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{Transparency=1}):Play()
Q.Title.Text="Callback Error"
print("Luna Interface Suite | "..ag.Name.." Callback Error "..tostring(Y))
wait(0.5)
Q.Title.Text=ag.Name
d:Create(Q,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundTransparency=0.5}):Play()
d:Create(Q,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundColor3=Color3.fromRGB(32,30,38)}):Play()
d:Create(Q.UIStroke,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{Transparency=0.5}):Play()
end
if X and W then
W()
end
end

local V=false

local W=game.Players.LocalPlayer:GetMouse()
T.Image="http://www.roblox.com/asset/?id=11415645739"
local X=false
local Y=false
Q.Interact.MouseButton1Down:Connect(function()
if not V then
V=true
tween(Q,{Size=UDim2.new(1.042,-25,0,165)},nil,TweenInfo.new(0.6,Enum.EasingStyle.Exponential))
tween(R,{Size=ak})
tween(S,{BackgroundTransparency=1})
else
V=false
tween(Q,{Size=UDim2.new(1.042,-25,0,38)},nil,TweenInfo.new(0.6,Enum.EasingStyle.Exponential))
tween(R,{Size=aj})
tween(S,{BackgroundTransparency=0})
end
end)
c.InputEnded:Connect(function(Z,_)if Z.UserInputType==Enum.UserInputType.MouseButton1 or Z.UserInputType==Enum.UserInputType.Touch then
X=false
Y=false
end end)
T.MouseButton1Down:Connect(function()
if V then
X=true
end
end)
T.MainPoint.MouseButton1Down:Connect(function()
if V then
X=true
end
end)
U.MouseButton1Down:Connect(function()
Y=true
end)
U.SliderPoint.MouseButton1Down:Connect(function()
Y=true
end)
local Z,_,al=ag.Color:ToHSV()
local am=Color3.fromHSV(Z,_,al)
local an,ao,ap=math.floor((Z*255)+0.5),math.floor((_*255)+0.5),math.floor((al*255)+0.5)
local aq=string.format("#%02X%02X%02X",am.R*0xFF,am.G*0xFF,am.B*0xFF)
Q.HexInput.InputBox.Text=aq
local function setDisplay(ar,as,at)

T.MainPoint.Position=UDim2.new(_,-T.MainPoint.AbsoluteSize.X/2,1-al,-T.MainPoint.AbsoluteSize.Y/2)
T.MainPoint.ImageColor3=Color3.fromHSV(ar,as,at)
R.BackgroundColor3=Color3.fromHSV(ar,1,1)
S.BackgroundColor3=Color3.fromHSV(ar,as,at)

local au=ar*U.AbsoluteSize.X
U.SliderPoint.Position=UDim2.new(0,au-U.SliderPoint.AbsoluteSize.X/2,0.5,0)
U.SliderPoint.ImageColor3=Color3.fromHSV(ar,1,1)
local av=Color3.fromHSV(ar,as,at)
local aw,ax,ay=math.floor((av.R*255)+0.5),math.floor((av.G*255)+0.5),math.floor((av.B*255)+0.5)
Q.RInput.InputBox.Text=tostring(aw)
Q.GInput.InputBox.Text=tostring(ax)
Q.BInput.InputBox.Text=tostring(ay)
aq=string.format("#%02X%02X%02X",av.R*0xFF,av.G*0xFF,av.B*0xFF)
Q.HexInput.InputBox.Text=aq
end
setDisplay(Z,_,al)
Q.HexInput.InputBox.FocusLost:Connect(function()
if not pcall(function()
local ar,as,at=string.match(Q.HexInput.InputBox.Text,"^#?(%w%w)(%w%w)(%w%w)$")
local au=Color3.fromRGB(tonumber(ar,16),tonumber(as,16),tonumber(at,16))
Z,_,al=au:ToHSV()
aq=Q.HexInput.InputBox.Text
setDisplay()
ag.Color=au
end)
then
Q.HexInput.InputBox.Text=aq
end
local ar,as,at=math.floor((Z*255)+0.5),math.floor((_*255)+0.5),math.floor((al*255)+0.5)
ag.Color=Color3.fromRGB(ar,as,at)
SafeCallback(Color3.fromRGB(ar,as,at))
end)

local function rgbBoxes(ar,as)
local at=tonumber(ar.Text)
local au=Color3.fromHSV(Z,_,al)
local av,aw,ax=math.floor((au.R*255)+0.5),math.floor((au.G*255)+0.5),math.floor((au.B*255)+0.5)
local ay
if as=="R"then ay=av;av=at elseif as=="G"then ay=aw;aw=at else ay=ax;ax=at end
if at then
at=math.clamp(at,0,255)
Z,_,al=Color3.fromRGB(av,aw,ax):ToHSV()
setDisplay()
else
ar.Text=tostring(ay)
end
local az,aA,aB=math.floor((au.R*255)+0.5),math.floor((au.G*255)+0.5),math.floor((au.B*255)+0.5)
ag.Color=Color3.fromRGB(az,aA,aB)
end
Q.RInput.InputBox.FocusLost:connect(function()
rgbBoxes(Q.RInput.InputBox,"R")
SafeCallback(Color3.fromRGB(an,ao,ap))
end)
Q.GInput.InputBox.FocusLost:connect(function()
rgbBoxes(Q.GInput.InputBox,"G")
SafeCallback(Color3.fromRGB(an,ao,ap))
end)
Q.BInput.InputBox.FocusLost:connect(function()
rgbBoxes(Q.BInput.InputBox,"B")
SafeCallback(Color3.fromRGB(an,ao,ap))
end)
f.RenderStepped:connect(function()
if X then
local ar=math.clamp(W.X-T.AbsolutePosition.X,0,T.AbsoluteSize.X)
local as=math.clamp(W.Y-T.AbsolutePosition.Y,0,T.AbsoluteSize.Y)
T.MainPoint.Position=UDim2.new(0,ar-T.MainPoint.AbsoluteSize.X/2,0,as-T.MainPoint.AbsoluteSize.Y/2)
_=ar/T.AbsoluteSize.X
al=1-(as/T.AbsoluteSize.Y)
S.BackgroundColor3=Color3.fromHSV(Z,_,al)
T.MainPoint.ImageColor3=Color3.fromHSV(Z,_,al)
R.BackgroundColor3=Color3.fromHSV(Z,1,1)
local at=Color3.fromHSV(Z,_,al)
local au,av,aw=math.floor((at.R*255)+0.5),math.floor((at.G*255)+0.5),math.floor((at.B*255)+0.5)
Q.RInput.InputBox.Text=tostring(au)
Q.GInput.InputBox.Text=tostring(av)
Q.BInput.InputBox.Text=tostring(aw)
Q.HexInput.InputBox.Text=string.format("#%02X%02X%02X",at.R*0xFF,at.G*0xFF,at.B*0xFF)
SafeCallback(Color3.fromRGB(au,av,aw))
ag.Color=Color3.fromRGB(au,av,aw)
ai.Color=ag.Color
end
if Y then
local ar=math.clamp(W.X-U.AbsolutePosition.X,0,U.AbsoluteSize.X)
Z=ar/U.AbsoluteSize.X
S.BackgroundColor3=Color3.fromHSV(Z,_,al)
U.SliderPoint.Position=UDim2.new(0,ar-U.SliderPoint.AbsoluteSize.X/2,0.5,0)
U.SliderPoint.ImageColor3=Color3.fromHSV(Z,1,1)
R.BackgroundColor3=Color3.fromHSV(Z,1,1)
T.MainPoint.ImageColor3=Color3.fromHSV(Z,_,al)
local as=Color3.fromHSV(Z,_,al)
local at,au,av=math.floor((as.R*255)+0.5),math.floor((as.G*255)+0.5),math.floor((as.B*255)+0.5)
Q.RInput.InputBox.Text=tostring(at)
Q.GInput.InputBox.Text=tostring(au)
Q.BInput.InputBox.Text=tostring(av)
Q.HexInput.InputBox.Text=string.format("#%02X%02X%02X",as.R*0xFF,as.G*0xFF,as.B*0xFF)
SafeCallback(Color3.fromRGB(at,au,av))
ag.Color=Color3.fromRGB(at,au,av)
ai.Color=ag.Color
end
end)

function ai.Set(ar,as)

as=Kwargify(ag,as or{})

ai.Settings=as
ag=as

Q.Name=ag.Name
Q.Title.Text=ag.Name
Q.Visible=true

local at,au,av=ag.Color:ToHSV()
local aw=Color3.fromHSV(at,au,av)
local ax,ay,az=math.floor((aw.R*255)+0.5),math.floor((aw.G*255)+0.5),math.floor((aw.B*255)+0.5)
local aA=string.format("#%02X%02X%02X",aw.R*0xFF,aw.G*0xFF,aw.B*0xFF)
Q.HexInput.InputBox.Text=aA
setDisplay(at,au,av)
SafeCallback(Color3.fromRGB(ax,ay,az))

ai.Color=ag.Color
end

function ai.Destroy(ar)
Q:Destroy()
end

if ah then
b.Options[ah]=ai
end

SafeCallback(ag.Color)

return ai
end

return N

end


function I.AddDivider(af)
local ag=s.Template.Divider:Clone()
ag.Parent=K
ag.Line.BackgroundTransparency=1
tween(ag.Line,{BackgroundTransparency=0})
end


function I.AddButton(af,ag)

ag=Kwargify({
Name="Button",
Description=nil,
Callback=function()

end,
},ag or{})

local ah={
Hover=false,
Settings=ag
}


local ai
if ag.Description==nil and ag.Description~=""then
ai=s.Template.Button:Clone()
else
ai=s.Template.ButtonDesc:Clone()
end
ai.Name=ag.Name
ai.Title.Text=ag.Name
if ag.Description~=nil and ag.Description~=""then
ai.Desc.Text=ag.Description
end
ai.Visible=true
ai.Parent=K

ai.UIStroke.Transparency=1
ai.Title.TextTransparency=1
if ag.Description~=nil and ag.Description~=""then
ai.Desc.TextTransparency=1
end

d:Create(ai,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundTransparency=0.5}):Play()
d:Create(ai.UIStroke,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{Transparency=0.5}):Play()
d:Create(ai.Title,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{TextTransparency=0}):Play()
if ag.Description~=nil and ag.Description~=""then
d:Create(ai.Desc,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{TextTransparency=0}):Play()
end

ai.Interact.MouseButton1Click:Connect(function()
local aj,ak=pcall(ag.Callback)

if not aj then
d:Create(ai,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundTransparency=0}):Play()
d:Create(ai,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundColor3=Color3.fromRGB(85,0,0)}):Play()
d:Create(ai.UIStroke,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{Transparency=1}):Play()
ai.Title.Text="Callback Error"
print("Luna Interface Suite | "..ag.Name.." Callback Error "..tostring(ak))
wait(0.5)
ai.Title.Text=ag.Name
d:Create(ai,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundTransparency=0.5}):Play()
d:Create(ai,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundColor3=Color3.fromRGB(32,30,38)}):Play()
d:Create(ai.UIStroke,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{Transparency=0.5}):Play()
else
tween(ai.UIStroke,{Color=Color3.fromRGB(136,131,163)})
wait(0.2)
if ah.Hover then
tween(ai.UIStroke,{Color=Color3.fromRGB(87,84,104)})
else
tween(ai.UIStroke,{Color=Color3.fromRGB(64,61,76)})
end
end
end)

ai.MouseEnter:Connect(function()
ah.Hover=true
tween(ai.UIStroke,{Color=Color3.fromRGB(87,84,104)})
end)

ai.MouseLeave:Connect(function()
ah.Hover=false
tween(ai.UIStroke,{Color=Color3.fromRGB(64,61,76)})
end)

function ah.Set(aj,ak)
ak=Kwargify({
Name=ag.Name,
Description=ag.Description,
Callback=ag.Callback
},ak or{})

ag=ak
ah.Settings=ak

ai.Name=ag.Name
ai.Title.Text=ag.Name
if ag.Description~=nil and ag.Description~=""and ai.Desc~=nil then
ai.Desc.Text=ag.Description
end
end

function ah.Destroy(aj)
ai.Visible=false
ai:Destroy()
end

return ah
end


function I.AddLabel(af,ag)

local ah={}

ag=Kwargify({
Text="Label",
Style=1
},ag or{})

ah.Settings=ag

local ai
if ag.Style==1 then
ai=s.Template.Label:Clone()
elseif ag.Style==2 then
ai=s.Template.Info:Clone()
elseif ag.Style==3 then
ai=s.Template.Warn:Clone()
end

ai.Text.Text=ag.Text
ai.Visible=true
ai.Parent=K

ai.BackgroundTransparency=1
ai.UIStroke.Transparency=1
ai.Text.TextTransparency=1

if ag.Style~=1 then
d:Create(ai,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundTransparency=0.8}):Play()
else
d:Create(ai,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundTransparency=1}):Play()
end
d:Create(ai.UIStroke,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{Transparency=0.5}):Play()
d:Create(ai.Text,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{TextTransparency=0}):Play()

function ah.Set(aj,ak)
ag.Text=ak
ah.Settings=ag
ai.Text.Text=ak
end

function ah.Destroy(aj)
ai.Visible=false
ai:Destroy()
end

return ah
end


function I.AddParagraph(af,ag)

ag=Kwargify({
Title="Paragraph",
Text="Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus venenatis lacus sed tempus eleifend. Mauris interdum bibendum felis, in tempor augue egestas vel. Praesent tristique consectetur ex, eu pretium sem placerat non. Vestibulum a nisi sit amet augue facilisis consectetur sit amet et nunc. Integer fermentum ornare cursus. Pellentesque sed ultricies metus, ut egestas metus. Vivamus auctor erat ac sapien vulputate, nec ultricies sem tempor. Quisque leo lorem, faucibus nec pulvinar nec, congue eu velit. Duis sodales massa efficitur imperdiet ultrices. Donec eros ipsum, ornare pharetra purus aliquam, tincidunt elementum nisi. Ut mi tortor, feugiat eget nunc vitae, facilisis interdum dui. Vivamus ullamcorper nunc dui, a dapibus nisi pretium ac. Integer eleifend placerat nibh, maximus malesuada tellus. Cras in justo in ligula scelerisque suscipit vel vitae quam."
},ag or{})

local ah={
Settings=ag
}

local ai=s.Template.Paragraph:Clone()
ai.Title.Text=ag.Title
ai.Text.Text=ag.Text
ai.Visible=true
ai.Parent=K

ai.BackgroundTransparency=1
ai.UIStroke.Transparency=1
ai.Title.TextTransparency=1
ai.Text.TextTransparency=1

d:Create(ai,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundTransparency=1}):Play()
d:Create(ai.UIStroke,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{Transparency=0.5}):Play()
d:Create(ai.Title,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{TextTransparency=0}):Play()
d:Create(ai.Text,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{TextTransparency=0}):Play()

function ah.Update(aj)
ai.Text.Size=UDim2.new(ai.Text.Size.X.Scale,ai.Text.Size.X.Offset,0,math.huge)
ai.Text.Size=UDim2.new(ai.Text.Size.X.Scale,ai.Text.Size.X.Offset,0,ai.Text.TextBounds.Y)
tween(ai,{Size=UDim2.new(ai.Size.X.Scale,ai.Size.X.Offset,0,ai.Text.TextBounds.Y+40)})
end

function ah.Set(aj,ak)

ak=Kwargify({
Title=ag.Title,
Text=ag.Text
},ak or{})

ah.Settings=ak

ai.Title.Text=ak.Title
ai.Text.Text=ak.Text

ah:Update()

end

function ah.Destroy(aj)
ai.Visible=false
ai:Destroy()
end

ah:Update()

return ah
end


function I.AddSlider(af,ag,ah)
local ai={IgnoreConfig=false,Class="Slider",Settings=ag}

ag=Kwargify({
Name="Slider",
Range={0,200},
Increment=1,
CurrentValue=100,
Callback=function(aj)

end,
},ag or{})

local aj=false
local ak=s.Template.Slider:Clone()
ak.Name=ag.Name.." - Slider"
ak.Title.Text=ag.Name
ak.Visible=true
ak.Parent=K

ak.BackgroundTransparency=1
ak.UIStroke.Transparency=1
ak.Title.TextTransparency=1

d:Create(ak,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundTransparency=0.5}):Play()
d:Create(ak.UIStroke,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{Transparency=0.5}):Play()
d:Create(ak.Title,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{TextTransparency=0}):Play()

ak.Main.Progress.Size=UDim2.new(0,ak.Main.AbsoluteSize.X*((ag.CurrentValue+ag.Range[1])/(ag.Range[2]-ag.Range[1]))>5 and ak.Main.AbsoluteSize.X*(ag.CurrentValue/(ag.Range[2]-ag.Range[1]))or 5,1,0)

ak.Value.Text=tostring(ag.CurrentValue)
ai.CurrentValue=ak.Value.Text

ag.Callback(ag.CurrentValue)

ak.MouseEnter:Connect(function()
tween(ak.UIStroke,{Color=Color3.fromRGB(87,84,104)})
end)

ak.MouseLeave:Connect(function()
tween(ak.UIStroke,{Color=Color3.fromRGB(64,61,76)})
end)

ak.Interact.InputBegan:Connect(function(al)
if al.UserInputType==Enum.UserInputType.MouseButton1 or al.UserInputType==Enum.UserInputType.Touch then
aj=true
end
end)

ak.Interact.InputEnded:Connect(function(al)
if al.UserInputType==Enum.UserInputType.MouseButton1 or al.UserInputType==Enum.UserInputType.Touch then
aj=false
end
end)

ak.Interact.MouseButton1Down:Connect(function()
local al=ak.Main.Progress.AbsolutePosition.X+ak.Main.Progress.AbsoluteSize.X
local am=al
local an
local ao;ao=f.Stepped:Connect(function()
if aj then
an=c:GetMouseLocation().X
al=al+0.025*(an-am)

if an<ak.Main.AbsolutePosition.X then
an=ak.Main.AbsolutePosition.X
elseif an>ak.Main.AbsolutePosition.X+ak.Main.AbsoluteSize.X then
an=ak.Main.AbsolutePosition.X+ak.Main.AbsoluteSize.X
end

if al<ak.Main.AbsolutePosition.X+5 then
al=ak.Main.AbsolutePosition.X+5
elseif al>ak.Main.AbsolutePosition.X+ak.Main.AbsoluteSize.X then
al=ak.Main.AbsolutePosition.X+ak.Main.AbsoluteSize.X
end

if al<=an and(an-am)<0 then
am=an
elseif al>=an and(an-am)>0 then
am=an
end
ak.Main.Progress.Size=UDim2.new(0,an-ak.Main.AbsolutePosition.X,1,0)
local ap=ag.Range[1]+(an-ak.Main.AbsolutePosition.X)/ak.Main.AbsoluteSize.X*(ag.Range[2]-ag.Range[1])

ap=math.floor(ap/ag.Increment+0.5)*(ag.Increment*10000000)/10000000

ak.Value.Text=tostring(ap)

if ag.CurrentValue~=ap then
local aq,ar=pcall(function()
ag.Callback(ap)
end)
if not aq then
d:Create(ak,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundTransparency=0}):Play()
d:Create(ak,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundColor3=Color3.fromRGB(85,0,0)}):Play()
d:Create(ak.UIStroke,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{Transparency=1}):Play()
ak.Title.Text="Callback Error"
print("Luna Interface Suite | "..ag.Name.." Callback Error "..tostring(ar))
wait(0.5)
ak.Title.Text=ag.Name
d:Create(ak,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundTransparency=0.5}):Play()
d:Create(ak,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundColor3=Color3.fromRGB(32,30,38)}):Play()
d:Create(ak.UIStroke,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{Transparency=0.5}):Play()
end

ag.CurrentValue=ap
ai.CurrentValue=ag.CurrentValue

end
else
d:Create(ak.Main.Progress,TweenInfo.new(0.1,Enum.EasingStyle.Back,Enum.EasingDirection.In,0,false),{Size=UDim2.new(0,an-ak.Main.AbsolutePosition.X>5 and an-ak.Main.AbsolutePosition.X or 5,1,0)}):Play()
ao:Disconnect()
end
end)
end)

local function Set(al,am)

al=al or ag.CurrentValue

d:Create(ak.Main.Progress,TweenInfo.new(0.3,Enum.EasingStyle.Back,Enum.EasingDirection.InOut),{Size=UDim2.new(0,ak.Main.AbsoluteSize.X*((al+ag.Range[1])/(ag.Range[2]-ag.Range[1]))>5 and ak.Main.AbsoluteSize.X*(al/(ag.Range[2]-ag.Range[1]))or 5,1,0)}):Play()
if not am then ak.Value.Text=tostring(al)end
local an,ao=pcall(function()
ag.Callback(al)
end)
if not an then
d:Create(ak,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundTransparency=0}):Play()
d:Create(ak,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundColor3=Color3.fromRGB(85,0,0)}):Play()
d:Create(ak.UIStroke,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{Transparency=1}):Play()
ak.Title.Text="Callback Error"
print("Luna Interface Suite | "..ag.Name.." Callback Error "..tostring(ao))
wait(0.5)
ak.Title.Text=ag.Name
d:Create(ak,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundTransparency=0.5}):Play()
d:Create(ak,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundColor3=Color3.fromRGB(30,33,40)}):Play()
d:Create(ak.UIStroke,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{Transparency=0.5}):Play()
end

ag.CurrentValue=al
ai.CurrentValue=ag.CurrentValue


end

function ai.UpdateValue(al,am)
Set(tonumber(am))
end

ak.Value:GetPropertyChangedSignal"Text":Connect(function()
local al=ak.Value.Text
if not tonumber(al)and al~="."then
ak.Value.Text=al:match"[0-9.]*"or""
end
if ag.Range[2]<(tonumber(ak.Value.Text)or 0)then ak.Value.Text=ag.Range[2]end
ak.Value.Size=UDim2.fromOffset(ak.Value.TextBounds.X,23)
Set(tonumber(ak.Value.Text),true)
end)

function ai.Set(al,am)
am=Kwargify({
Name=ag.Name,
Range=ag.Range,
Increment=ag.Increment,
CurrentValue=ag.CurrentValue,
Callback=ag.Callback
},am or{})

ag=am
ai.Settings=am

ak.Name=ag.Name.." - Slider"
ak.Title.Text=ag.Name

Set()


end

function ai.Destroy(al)
ak.Visible=false
ak:Destroy()
end

if ah then
b.Options[ah]=ai
end

aa.ThemeRemote:GetPropertyChangedSignal"Value":Connect(function()
ak.Main.color.Color=b.ThemeGradient
ak.Main.UIStroke.color.Color=b.ThemeGradient
end)

return ai

end


function I.AddToggle(af,ag,ah)
local ai={IgnoreConfig=false,Class="Toggle"}

ag=Kwargify({
Name="Toggle",
Description=nil,
CurrentValue=false,
Callback=function(aj)
end,
},ag or{})


local aj

if ag.Description~=nil and ag.Description~=""then
aj=s.Template.ToggleDesc:Clone()
else
aj=s.Template.Toggle:Clone()
end

aj.Visible=true
aj.Parent=K

aj.Name=ag.Name.." - Toggle"
aj.Title.Text=ag.Name
if ag.Description~=nil and ag.Description~=""then
aj.Desc.Text=ag.Description
end

aj.UIStroke.Transparency=1
aj.Title.TextTransparency=1
if ag.Description~=nil and ag.Description~=""then
aj.Desc.TextTransparency=1
end

d:Create(aj,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundTransparency=0.5}):Play()
if ag.Description~=nil and ag.Description~=""then
d:Create(aj.Desc,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{TextTransparency=0}):Play()
end
d:Create(aj.UIStroke,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{Transparency=0.5}):Play()
d:Create(aj.Title,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{TextTransparency=0}):Play()

local function Set(ak)
if ak then
aj.toggle.color.Enabled=true
tween(aj.toggle,{BackgroundTransparency=0})

aj.toggle.UIStroke.color.Enabled=true
tween(aj.toggle.UIStroke,{Color=Color3.new(255,255,255)})

tween(aj.toggle.val,{BackgroundColor3=Color3.fromRGB(255,255,255),Position=UDim2.new(1,-23,0.5,0),BackgroundTransparency=0.45})
else
aj.toggle.color.Enabled=false
aj.toggle.UIStroke.color.Enabled=false

aj.toggle.UIStroke.Color=Color3.fromRGB(97,97,97)

tween(aj.toggle,{BackgroundTransparency=1})

tween(aj.toggle.val,{BackgroundColor3=Color3.fromRGB(97,97,97),Position=UDim2.new(0,5,0.5,0),BackgroundTransparency=0})
end

ai.CurrentValue=ak
end

aj.Interact.MouseButton1Click:Connect(function()
ag.CurrentValue=not ag.CurrentValue
Set(ag.CurrentValue)

local ak,al=pcall(function()
ag.Callback(ag.CurrentValue)
end)
if not ak then
d:Create(aj,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundTransparency=0}):Play()
d:Create(aj,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundColor3=Color3.fromRGB(85,0,0)}):Play()
d:Create(aj.UIStroke,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{Transparency=1}):Play()
aj.Title.Text="Callback Error"
print("Luna Interface Suite | "..ag.Name.." Callback Error "..tostring(al))
wait(0.5)
aj.Title.Text=ag.Name
d:Create(aj,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundTransparency=0.5}):Play()
d:Create(aj,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundColor3=Color3.fromRGB(32,30,38)}):Play()
d:Create(aj.UIStroke,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{Transparency=0.5}):Play()
end
end)

aj.MouseEnter:Connect(function()
tween(aj.UIStroke,{Color=Color3.fromRGB(87,84,104)})
end)

aj.MouseLeave:Connect(function()
tween(aj.UIStroke,{Color=Color3.fromRGB(64,61,76)})
end)

if ag.CurrentValue then
Set(ag.CurrentValue)
local ak,al=pcall(function()
ag.Callback(ag.CurrentValue)
end)
if not ak then
d:Create(aj,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundTransparency=0}):Play()
d:Create(aj,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundColor3=Color3.fromRGB(85,0,0)}):Play()
d:Create(aj.UIStroke,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{Transparency=1}):Play()
aj.Title.Text="Callback Error"
print("Luna Interface Suite | "..ag.Name.." Callback Error "..tostring(al))
wait(0.5)
aj.Title.Text=ag.Name
d:Create(aj,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundTransparency=0.5}):Play()
d:Create(aj,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundColor3=Color3.fromRGB(32,30,38)}):Play()
d:Create(aj.UIStroke,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{Transparency=0.5}):Play()
end
end

function ai.UpdateState(ak,al)
ag.CurrentValue=al
Set(ag.CurrentValue)
end

function ai.Set(ak,al)

al=Kwargify({
Name=ag.Name,
Description=ag.Description,
CurrentValue=ag.CurrentValue,
Callback=ag.Callback
},al or{})

ai.Settings=al
ag=al

aj.Name=ag.Name.." - Toggle"
aj.Title.Text=ag.Name
if ag.Description~=nil and ag.Description~=""and aj.Desc~=nil then
aj.Desc.Text=ag.Description
end

Set(ag.CurrentValue)

ai.CurrentValue=ag.CurrentValue

local am,an=pcall(function()
ag.Callback(ag.CurrentValue)
end)
if not am then
d:Create(aj,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundTransparency=0}):Play()
d:Create(aj,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundColor3=Color3.fromRGB(85,0,0)}):Play()
d:Create(aj.UIStroke,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{Transparency=0}):Play()
aj.Title.Text="Callback Error"
print("Luna Interface Suite | "..ag.Name.." Callback Error "..tostring(an))
wait(0.5)
aj.Title.Text=ag.Name
d:Create(aj,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundTransparency=0.5}):Play()
d:Create(aj,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundColor3=Color3.fromRGB(32,30,38)}):Play()
d:Create(aj.UIStroke,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{Transparency=0.5}):Play()
end
end

function ai.Destroy(ak)
aj.Visible=false
aj:Destroy()
end

aa.ThemeRemote:GetPropertyChangedSignal"Value":Connect(function()
aj.toggle.color.Color=b.ThemeGradient
aj.toggle.UIStroke.color.Color=b.ThemeGradient
end)

if ah then
b.Options[ah]=ai
end

return ai

end


function I.AddBind(af,ag,ah)
local ai={Class="Keybind",IgnoreConfig=false,Settings=ag,Active=false}

ag=Kwargify({
Name="Bind",
Description=nil,
CurrentBind="Q",
HoldToInteract=false,
Callback=function(aj)


end,

OnChangedCallback=function(aj)


end,
},ag or{})

local aj=false

local ak
if ag.Description~=nil and ag.Description~=""then
ak=s.Template.BindDesc:Clone()
else
ak=s.Template.Bind:Clone()
end

ak.Visible=true
ak.Parent=K

ak.Name=ag.Name
ak.Title.Text=ag.Name
if ag.Description~=nil and ag.Description~=""then
ak.Desc.Text=ag.Description
end

ak.Title.TextTransparency=1
if ag.Description~=nil and ag.Description~=""then
ak.Desc.TextTransparency=1
end
ak.BindFrame.BackgroundTransparency=1
ak.BindFrame.UIStroke.Transparency=1
ak.BindFrame.BindBox.TextTransparency=1

d:Create(ak,TweenInfo.new(0.3,Enum.EasingStyle.Exponential),{BackgroundTransparency=0.5}):Play()
d:Create(ak.Title,TweenInfo.new(0.3,Enum.EasingStyle.Exponential),{TextTransparency=0}):Play()
if ag.Description~=nil and ag.Description~=""then
d:Create(ak.Desc,TweenInfo.new(0.3,Enum.EasingStyle.Exponential),{TextTransparency=0}):Play()
end
d:Create(ak.BindFrame,TweenInfo.new(0.3,Enum.EasingStyle.Exponential),{BackgroundTransparency=0.9}):Play()
d:Create(ak.BindFrame.UIStroke,TweenInfo.new(0.3,Enum.EasingStyle.Exponential),{Transparency=0.3}):Play()
d:Create(ak.BindFrame.BindBox,TweenInfo.new(0.3,Enum.EasingStyle.Exponential),{TextTransparency=0}):Play()


ak.BindFrame.BindBox.Text=ag.CurrentBind
ak.BindFrame.BindBox.Size=UDim2.new(0,ak.BindFrame.BindBox.TextBounds.X+20,0,42)

ak.BindFrame.BindBox.Focused:Connect(function()
aj=true
ak.BindFrame.BindBox.Text=""
end)

ak.BindFrame.BindBox.FocusLost:Connect(function()
aj=false
if ak.BindFrame.BindBox.Text==('')then
ak.BindFrame.BindBox.Text=ag.CurrentBind
end
end)

ak.MouseEnter:Connect(function()
tween(ak.UIStroke,{Color=Color3.fromRGB(87,84,104)})
end)

ak.MouseLeave:Connect(function()
tween(ak.UIStroke,{Color=Color3.fromRGB(64,61,76)})
end)
c.InputBegan:Connect(function(al,am)

if aj then
if al.KeyCode~=Enum.KeyCode.Unknown and al.KeyCode~=E.Bind then
local an=string.split(tostring(al.KeyCode),".")
local ao=an[3]
ak.BindFrame.BindBox.Text=tostring(ao)
ag.CurrentBind=tostring(ao)
local ap,aq=pcall(function()
ag.Callback(ag.CurrentBind)
end)
if not ap then
d:Create(ak,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundTransparency=0}):Play()
d:Create(ak,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundColor3=Color3.fromRGB(85,0,0)}):Play()
d:Create(ak.UIStroke,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{Transparency=1}):Play()
ak.Title.Text="Callback Error"
print("Luna Interface Suite | "..ag.Name.." Callback Error "..tostring(aq))
wait(0.5)
ak.Title.Text=ag.Name
d:Create(ak,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundTransparency=0.5}):Play()
d:Create(ak,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundColor3=Color3.fromRGB(32,30,38)}):Play()
d:Create(ak.UIStroke,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{Transparency=0.5}):Play()
end
ak.BindFrame.BindBox:ReleaseFocus()
end
elseif ag.CurrentBind~=nil and(al.KeyCode==Enum.KeyCode[ag.CurrentBind]and not am)then
local an=true
local ao
ao=al.Changed:Connect(function(ap)
if ap=="UserInputState"then
ao:Disconnect()
an=false
end
end)

if not ag.HoldToInteract then
ai.Active=not ai.Active
local ap,aq=pcall(function()
ag.Callback(ai.Active)
end)
if not ap then
d:Create(ak,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundTransparency=0}):Play()
d:Create(ak,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundColor3=Color3.fromRGB(85,0,0)}):Play()
d:Create(ak.UIStroke,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{Transparency=1}):Play()
ak.Title.Text="Callback Error"
print("Luna Interface Suite | "..ag.Name.." Callback Error "..tostring(aq))
wait(0.5)
ak.Title.Text=ag.Name
d:Create(ak,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundTransparency=0.5}):Play()
d:Create(ak,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundColor3=Color3.fromRGB(32,30,38)}):Play()
d:Create(ak.UIStroke,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{Transparency=0.5}):Play()
end
else
wait(0.1)
if an then
local ap;ap=f.Stepped:Connect(function()
if not an then
local aq,ar=pcall(function()
ag.Callback(false)
end)
if not aq then
d:Create(ak,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundTransparency=0}):Play()
d:Create(ak,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundColor3=Color3.fromRGB(85,0,0)}):Play()
d:Create(ak.UIStroke,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{Transparency=1}):Play()
ak.Title.Text="Callback Error"
print("Luna Interface Suite | "..ag.Name.." Callback Error "..tostring(ar))
wait(0.5)
ak.Title.Text=ag.Name
d:Create(ak,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundTransparency=0.5}):Play()
d:Create(ak,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundColor3=Color3.fromRGB(32,30,38)}):Play()
d:Create(ak.UIStroke,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{Transparency=0.5}):Play()
end
ap:Disconnect()
else
local aq,ar=pcall(function()
ag.Callback(true)
end)
if not aq then
d:Create(ak,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundTransparency=0}):Play()
d:Create(ak,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundColor3=Color3.fromRGB(85,0,0)}):Play()
d:Create(ak.UIStroke,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{Transparency=1}):Play()
ak.Title.Text="Callback Error"
print("Luna Interface Suite | "..ag.Name.." Callback Error "..tostring(ar))
wait(0.5)
ak.Title.Text=ag.Name
d:Create(ak,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundTransparency=0.5}):Play()
d:Create(ak,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundColor3=Color3.fromRGB(32,30,38)}):Play()
d:Create(ak.UIStroke,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{Transparency=0.5}):Play()
end
end
end)
end
end
end
end)

ak.BindFrame.BindBox:GetPropertyChangedSignal"Text":Connect(function()
d:Create(ak.BindFrame,TweenInfo.new(0.55,Enum.EasingStyle.Exponential,Enum.EasingDirection.Out),{Size=UDim2.new(0,ak.BindFrame.BindBox.TextBounds.X+20,0,30)}):Play()
end)

function ai.Set(al,am)

am=Kwargify({
Name=ag.Name,
Description=ag.Description,
CurrentBind=ag.CurrentBind,
HoldToInteract=ag.HoldToInteract,
Callback=ag.Callback
},am or{})

ai.Settings=am
ag=am

ak.Name=ag.Name
ak.Title.Text=ag.Name
if ag.Description~=nil and ag.Description~=""and ak.Desc~=nil then
ak.Desc.Text=ag.Description
end

ak.BindFrame.BindBox.Text=ag.CurrentBind
ak.BindFrame.Size=UDim2.new(0,ak.BindFrame.BindBox.TextBounds.X+20,0,42)


ai.CurrentBind=ag.CurrentBind
end

function ai.Destroy(al)
ak.Visible=false
ak:Destroy()
end

if ah then
b.Options[ah]=ai
end



return ai

end

function I.AddKeybind(af,ag)

ag=Kwargify({
Name="Bind",
Description=nil,
CurrentBind="Q",
HoldToInteract=false,
Callback=function(ah)


end
},ag or{})

local ah={Settings=ag,Active=false}
local ai=false

local aj
if ag.Description~=nil and ag.Description~=""then
aj=s.Template.BindDesc:Clone()
else
aj=s.Template.Bind:Clone()
end

aj.Visible=true
aj.Parent=K

aj.Name=ag.Name
aj.Title.Text=ag.Name
if ag.Description~=nil and ag.Description~=""then
aj.Desc.Text=ag.Description
end

aj.Title.TextTransparency=1
if ag.Description~=nil and ag.Description~=""then
aj.Desc.TextTransparency=1
end
aj.BindFrame.BackgroundTransparency=1
aj.BindFrame.UIStroke.Transparency=1
aj.BindFrame.BindBox.TextTransparency=1

d:Create(aj,TweenInfo.new(0.3,Enum.EasingStyle.Exponential),{BackgroundTransparency=0.5}):Play()
d:Create(aj.Title,TweenInfo.new(0.3,Enum.EasingStyle.Exponential),{TextTransparency=0}):Play()
if ag.Description~=nil and ag.Description~=""then
d:Create(aj.Desc,TweenInfo.new(0.3,Enum.EasingStyle.Exponential),{TextTransparency=0}):Play()
end
d:Create(aj.BindFrame,TweenInfo.new(0.3,Enum.EasingStyle.Exponential),{BackgroundTransparency=0.9}):Play()
d:Create(aj.BindFrame.UIStroke,TweenInfo.new(0.3,Enum.EasingStyle.Exponential),{Transparency=0.3}):Play()
d:Create(aj.BindFrame.BindBox,TweenInfo.new(0.3,Enum.EasingStyle.Exponential),{TextTransparency=0}):Play()


aj.BindFrame.BindBox.Text=ag.CurrentBind
aj.BindFrame.BindBox.Size=UDim2.new(0,aj.BindFrame.BindBox.TextBounds.X+16,0,42)

aj.BindFrame.BindBox.Focused:Connect(function()
ai=true
aj.BindFrame.BindBox.Text=""
end)

aj.BindFrame.BindBox.FocusLost:Connect(function()
ai=false
if aj.BindFrame.BindBox.Text==('')then
aj.BindFrame.BindBox.Text=ag.CurrentBind
end
end)

aj.MouseEnter:Connect(function()
tween(aj.UIStroke,{Color=Color3.fromRGB(87,84,104)})
end)

aj.MouseLeave:Connect(function()
tween(aj.UIStroke,{Color=Color3.fromRGB(64,61,76)})
end)
c.InputBegan:Connect(function(ak,al)

if ai then
if ak.KeyCode~=Enum.KeyCode.Unknown and ak.KeyCode~=Enum.KeyCode.K then
local am=string.split(tostring(ak.KeyCode),".")
local an=am[3]
aj.BindFrame.BindBox.Text=tostring(an)
ag.CurrentBind=tostring(an)
aj.BindFrame.BindBox:ReleaseFocus()
end
elseif ag.CurrentBind~=nil and(ak.KeyCode==Enum.KeyCode[ag.CurrentBind]and not al)then
local am=true
local an
an=ak.Changed:Connect(function(ao)
if ao=="UserInputState"then
an:Disconnect()
am=false
end
end)

if not ag.HoldToInteract then
ah.Active=not ah.Active
local ao,ap=pcall(function()
ag.Callback(ah.Active)
end)
if not ao then
d:Create(aj,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundTransparency=0}):Play()
d:Create(aj,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundColor3=Color3.fromRGB(85,0,0)}):Play()
d:Create(aj.UIStroke,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{Transparency=1}):Play()
aj.Title.Text="Callback Error"
print("Luna Interface Suite | "..ag.Name.." Callback Error "..tostring(ap))
wait(0.5)
aj.Title.Text=ag.Name
d:Create(aj,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundTransparency=0.5}):Play()
d:Create(aj,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundColor3=Color3.fromRGB(32,30,38)}):Play()
d:Create(aj.UIStroke,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{Transparency=0.5}):Play()
end
else
wait(0.1)
if am then
local ao;ao=f.Stepped:Connect(function()
if not am then
local ap,aq=pcall(function()
ag.Callback(false)
end)
if not ap then
d:Create(aj,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundTransparency=0}):Play()
d:Create(aj,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundColor3=Color3.fromRGB(85,0,0)}):Play()
d:Create(aj.UIStroke,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{Transparency=1}):Play()
aj.Title.Text="Callback Error"
print("Luna Interface Suite | "..ag.Name.." Callback Error "..tostring(aq))
wait(0.5)
aj.Title.Text=ag.Name
d:Create(aj,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundTransparency=0.5}):Play()
d:Create(aj,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundColor3=Color3.fromRGB(32,30,38)}):Play()
d:Create(aj.UIStroke,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{Transparency=0.5}):Play()
end
ao:Disconnect()
else
local ap,aq=pcall(function()
ag.Callback(true)
end)
if not ap then
d:Create(aj,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundTransparency=0}):Play()
d:Create(aj,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundColor3=Color3.fromRGB(85,0,0)}):Play()
d:Create(aj.UIStroke,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{Transparency=1}):Play()
aj.Title.Text="Callback Error"
print("Luna Interface Suite | "..ag.Name.." Callback Error "..tostring(aq))
wait(0.5)
aj.Title.Text=ag.Name
d:Create(aj,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundTransparency=0.5}):Play()
d:Create(aj,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundColor3=Color3.fromRGB(32,30,38)}):Play()
d:Create(aj.UIStroke,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{Transparency=0.5}):Play()
end
end
end)
end
end
end
end)

aj.BindFrame.BindBox:GetPropertyChangedSignal"Text":Connect(function()
d:Create(aj.BindFrame,TweenInfo.new(0.55,Enum.EasingStyle.Exponential,Enum.EasingDirection.Out),{Size=UDim2.new(0,aj.BindFrame.BindBox.TextBounds.X+16,0,30)}):Play()
end)

function ah.Set(ak,al)

al=Kwargify({
Name=ag.Name,
Description=ag.Description,
CurrentBind=ag.CurrentBind,
HoldToInteract=ag.HoldToInteract,
Callback=ag.Callback
},al or{})

ah.Settings=al
ag=al

aj.Name=ag.Name
aj.Title.Text=ag.Name
if ag.Description~=nil and ag.Description~=""and aj.Desc~=nil then
aj.Desc.Text=ag.Description
end

aj.BindFrame.BindBox.Text=ag.CurrentBind
aj.BindFrame.BindBox.Size=UDim2.new(0,aj.BindFrame.BindBox.TextBounds.X+16,0,42)



end

function ah.Destroy(ak)
aj.Visible=false
aj:Destroy()
end



return ah

end


function I.AddInput(af,ag,ah)
local ai={IgnoreConfig=false,Class="Input",Settings=ag}

ag=Kwargify({
Name="Dynamic Input",
Description=nil,
CurrentValue="",
PlaceholderText="Input Placeholder",
RemoveTextAfterFocusLost=false,
Numeric=false,
Enter=false,
MaxCharacters=nil,
Callback=function(aj)

end,
},ag or{})

ai.CurrentValue=ag.CurrentValue

local aj
if ag.Description~=nil and ag.Description~=""then
aj=true
end

local ak
if aj then
ak=s.Template.InputDesc:Clone()
else
ak=s.Template.Input:Clone()
end

ak.Name=ag.Name
ak.Title.Text=ag.Name
if aj then ak.Desc.Text=ag.Description end
ak.Visible=true
ak.Parent=K

ak.BackgroundTransparency=1
ak.UIStroke.Transparency=1
ak.Title.TextTransparency=1
if aj then ak.Desc.TextTransparency=1 end
ak.InputFrame.BackgroundTransparency=1
ak.InputFrame.UIStroke.Transparency=1
ak.InputFrame.InputBox.TextTransparency=1

d:Create(ak,TweenInfo.new(0.3,Enum.EasingStyle.Exponential),{BackgroundTransparency=0.5}):Play()
d:Create(ak.UIStroke,TweenInfo.new(0.3,Enum.EasingStyle.Exponential),{Transparency=0.5}):Play()
d:Create(ak.Title,TweenInfo.new(0.3,Enum.EasingStyle.Exponential),{TextTransparency=0}):Play()
if aj then d:Create(ak.Desc,TweenInfo.new(0.3,Enum.EasingStyle.Exponential),{TextTransparency=0}):Play()end
d:Create(ak.InputFrame,TweenInfo.new(0.3,Enum.EasingStyle.Exponential),{BackgroundTransparency=0.9}):Play()
d:Create(ak.InputFrame.UIStroke,TweenInfo.new(0.3,Enum.EasingStyle.Exponential),{Transparency=0.3}):Play()
d:Create(ak.InputFrame.InputBox,TweenInfo.new(0.3,Enum.EasingStyle.Exponential),{TextTransparency=0}):Play()

ak.InputFrame.InputBox.PlaceholderText=ag.PlaceholderText
ak.InputFrame.Size=UDim2.new(0,ak.InputFrame.InputBox.TextBounds.X+52,0,30)

ak.InputFrame.InputBox.FocusLost:Connect(function(al)

if ag.Enter then
if al then
local am,an=pcall(function()
ag.Callback(ak.InputFrame.InputBox.Text)
ai.CurrentValue=ak.InputFrame.InputBox.Text
end)
if not am then
d:Create(ak,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundTransparency=0}):Play()
d:Create(ak,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundColor3=Color3.fromRGB(85,0,0)}):Play()
d:Create(ak.UIStroke,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{Transparency=1}):Play()
ak.Title.Text="Callback Error"
print("Luna Interface Suite | "..ag.Name.." Callback Error "..tostring(an))
wait(0.5)
ak.Title.Text=ag.Name
d:Create(ak,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundTransparency=0.5}):Play()
d:Create(ak,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundColor3=Color3.fromRGB(32,30,38)}):Play()
d:Create(ak.UIStroke,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{Transparency=0.5}):Play()
end
end
end

if ag.RemoveTextAfterFocusLost then
ak.InputFrame.InputBox.Text=""
end

end)

if ag.Numeric then
ak.InputFrame.InputBox:GetPropertyChangedSignal"Text":Connect(function()
local al=ak.InputFrame.InputBox.Text
if not tonumber(al)and al~="."then
ak.InputFrame.InputBox.Text=al:match"[0-9.]*"or""
end
end)
end

ak.InputFrame.InputBox:GetPropertyChangedSignal"Text":Connect(function()
if tonumber(ag.MaxCharacters)then
if(#ak.InputFrame.InputBox.Text-1)==ag.MaxCharacters then
ak.InputFrame.InputBox.Text=ak.InputFrame.InputBox.Text:sub(1,ag.MaxCharacters)
end
end
d:Create(ak.InputFrame,TweenInfo.new(0.55,Enum.EasingStyle.Exponential,Enum.EasingDirection.Out),{Size=UDim2.new(0,ak.InputFrame.InputBox.TextBounds.X+52,0,30)}):Play()
if not ag.Enter then
local al,am=pcall(function()
ag.Callback(ak.InputFrame.InputBox.Text)
end)
if not al then
d:Create(ak,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundTransparency=0}):Play()
d:Create(ak,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundColor3=Color3.fromRGB(85,0,0)}):Play()
d:Create(ak.UIStroke,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{Transparency=1}):Play()
ak.Title.Text="Callback Error"
print("Luna Interface Suite | "..ag.Name.." Callback Error "..tostring(am))
wait(0.5)
ak.Title.Text=ag.Name
d:Create(ak,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundTransparency=0.5}):Play()
d:Create(ak,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundColor3=Color3.fromRGB(32,30,38)}):Play()
d:Create(ak.UIStroke,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{Transparency=0.5}):Play()
end
end
ai.CurrentValue=ak.InputFrame.InputBox.Text
end)

ak.MouseEnter:Connect(function()
tween(ak.UIStroke,{Color=Color3.fromRGB(87,84,104)})
end)

ak.MouseLeave:Connect(function()
tween(ak.UIStroke,{Color=Color3.fromRGB(64,61,76)})
end)


function ai.Set(al,am)

am=Kwargify(ag,am or{})

ai.Settings=am
ag=am

ak.Name=ag.Name
ak.Title.Text=ag.Name
if ag.Description~=nil and ag.Description~=""and ak.Desc~=nil then
ak.Desc.Text=ag.Description
end

ak.InputFrame.InputBox:CaptureFocus()
ak.InputFrame.InputBox.Text=tostring(ag.CurrentValue)
ak.InputFrame.InputBox:ReleaseFocus()
ak.InputFrame.Size=UDim2.new(0,ak.InputFrame.InputBox.TextBounds.X+52,0,42)

ai.CurrentValue=ag.CurrentValue
end

function ai.Destroy(al)
ak.Visible=false
ak:Destroy()
end

if ah then
b.Options[ah]=ai
end


return ai

end


function I.AddDropdown(af,ag,ah)
local ai={IgnoreConfig=false,Class="Dropdown",Settings=ag}

ag=Kwargify({
Name="Dropdown",
Description=nil,
Options={"Option 1","Option 2"},
CurrentOption={"Option 1"},
MultipleOptions=false,
SpecialType=nil,
Callback=function(aj)


end,
},ag or{})

ai.CurrentOption=ag.CurrentOption

local aj=false
if ag.Description~=nil and ag.Description~=""then
aj=true
end
local ak
local al
if aj then
ak=48
al=170
elseif not aj then
ak=38
al=160
end
local am=false

local an
if aj then an=s.Template.DropdownDesc:Clone()else an=s.Template.Dropdown:Clone()end

an.Name=ag.Name
an.Title.Text=ag.Name
if aj then an.Desc.Text=ag.Description end

an.Parent=K
an.Visible=true

local function Toggle()
am=not am
if am then
tween(an.icon,{Rotation=180})
tween(an,{Size=UDim2.new(1,-25,0,al)})
else
tween(an.icon,{Rotation=0})
tween(an,{Size=UDim2.new(1,-25,0,ak)})
end
end

local function SafeCallback(ao,ap)
local aq,ar=pcall(function()
ag.Callback(ao)
end)
if not aq then
d:Create(an,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundTransparency=0}):Play()
d:Create(an,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundColor3=Color3.fromRGB(85,0,0)}):Play()
d:Create(an.UIStroke,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{Transparency=1}):Play()
an.Title.Text="Callback Error"
print("Luna Interface Suite | "..ag.Name.." Callback Error "..tostring(ar))
wait(0.5)
an.Title.Text=ag.Name
d:Create(an,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundTransparency=0.5}):Play()
d:Create(an,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundColor3=Color3.fromRGB(32,30,38)}):Play()
d:Create(an.UIStroke,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{Transparency=0.5}):Play()
end
if aq and ap then
ap()
end
end


an.Selected:GetPropertyChangedSignal"Text":Connect(function()
local ao=an.Selected.Text:lower()
for ap,aq in ipairs(an.List:GetChildren())do
if aq:IsA"TextLabel"and aq.Name~="Template"then
aq.Visible=ao==""or string.find(aq.Name:lower(),ao,1,true)~=nil
end
end
end)


local function Clear()
for ao,ap in ipairs(an.List:GetChildren())do
if ap.ClassName=="TextLabel"and ap.Name~="Template"then
ap:Destroy()
end
end
end

local function ActivateColorSingle(ao)
for ap,aq in pairs(an.List:GetChildren())do
if aq.ClassName=="TextLabel"and aq.Name~="Template"then
tween(aq,{BackgroundTransparency=0.98})
end
end

Toggle()
tween(an.List[ao],{BackgroundTransparency=0.95,TextColor3=Color3.fromRGB(240,240,240)})
end

local function Refresh()
Clear()
for ao,ap in pairs(ag.Options)do
local aq=an.List.Template:Clone()
local ar=false
aq.Text=ap
if ap=="Template"then ap="Template (Name)"end
aq.Name=ap
aq.Interact.MouseButton1Click:Connect(function()
local as
if ag.MultipleOptions then
if table.find(ag.CurrentOption,ap)then
RemoveTable(ag.CurrentOption,ap)
ai.CurrentOption=ag.CurrentOption
if not ar then
tween(aq,{TextColor3=Color3.fromRGB(200,200,200)})
end
tween(aq,{BackgroundTransparency=0.98})
else
table.insert(ag.CurrentOption,ap)
ai.CurrentOption=ag.CurrentOption
tween(aq,{TextColor3=Color3.fromRGB(240,240,240),BackgroundTransparency=0.95})
end
as=ag.CurrentOption
else
ag.CurrentOption={ap}
as=ap
ai.CurrentOption=as
ActivateColorSingle(ap)
end

SafeCallback(as,function()
if ag.MultipleOptions then
if ag.CurrentOption and type(ag.CurrentOption)=="table"then
if#ag.CurrentOption==1 then
an.Selected.PlaceholderText=ag.CurrentOption[1]
elseif#ag.CurrentOption==0 then
an.Selected.PlaceholderText="None"
else
an.Selected.PlaceholderText=unpackt(ag.CurrentOption)
end
else
ag.CurrentOption={}
an.Selected.PlaceholderText="None"
end
end
if not ag.MultipleOptions then
an.Selected.PlaceholderText=ag.CurrentOption[1]or"None"
end
an.Selected.Text=""
end)
end)
aq.Visible=true
aq.Parent=an.List
aq.MouseEnter:Connect(function()
ar=true
if aq.BackgroundTransparency==0.95 then
return
else
tween(aq,{TextColor3=Color3.fromRGB(240,240,240)})
end
end)
aq.MouseLeave:Connect(function()
ar=false
if aq.BackgroundTransparency==0.95 then
return
else
tween(aq,{TextColor3=Color3.fromRGB(200,200,200)})
end
end)
end
end

local function PlayerTableRefresh()
for ao,ap in pairs(ag.Options)do
table.remove(ag.Options,ao)
end

for ao,ap in pairs(h:GetChildren())do
table.insert(ag.Options,ap.Name)
end
end

an.Interact.MouseButton1Click:Connect(function()
Toggle()
end)

an.MouseEnter:Connect(function()
tween(an.UIStroke,{Color=Color3.fromRGB(87,84,104)})
end)

an.MouseLeave:Connect(function()
tween(an.UIStroke,{Color=Color3.fromRGB(64,61,76)})
end)

if ag.SpecialType=="Player"then

for ao,ap in pairs(ag.Options)do
table.remove(ag.Options,ao)
end
PlayerTableRefresh()
ag.CurrentOption=ag.Options[1]

h.PlayerAdded:Connect(function()PlayerTableRefresh()end)
h.PlayerRemoving:Connect(function()PlayerTableRefresh()end)

end

Refresh()

if ag.CurrentOption then
if type(ag.CurrentOption)=="string"then
ag.CurrentOption={ag.CurrentOption}
end
if not ag.MultipleOptions and type(ag.CurrentOption)=="table"then
ag.CurrentOption={ag.CurrentOption[1]}
end
else
ag.CurrentOption={}
end

local ao,ap=0
for aq,ar in pairs(ag.CurrentOption)do
ao=ao+1
end
if ao==1 then ap=ag.CurrentOption[1]else ap=ag.CurrentOption end
SafeCallback(ap)
if type(ap)=="string"then
tween(an.List[ap],{TextColor3=Color3.fromRGB(240,240,240),BackgroundTransparency=0.95})
else
for aq,ar in pairs(ap)do
tween(an.List[ar],{TextColor3=Color3.fromRGB(240,240,240),BackgroundTransparency=0.95})
end
end

if ag.MultipleOptions then
if ag.CurrentOption and type(ag.CurrentOption)=="table"then
if#ag.CurrentOption==1 then
an.Selected.PlaceholderText=ag.CurrentOption[1]
elseif#ag.CurrentOption==0 then
an.Selected.PlaceholderText="None"
else
an.Selected.PlaceholderText=unpackt(ag.CurrentOption)
end
else
ag.CurrentOption={}
an.Selected.PlaceholderText="None"
end
for aq,ar in pairs(ag.CurrentOption)do
tween(an.List[ar],{TextColor3=Color3.fromRGB(227,227,227),BackgroundTransparency=0.95})
end
else
an.Selected.PlaceholderText=ag.CurrentOption[1]or"None"
end
an.Selected.Text=""

function ai.Set(aq,ar)
ar=Kwargify(ag,ar or{})

ai.Settings=ar
ag=ar

an.Name=ag.Name
an.Title.Text=ag.Name
if ag.Description~=nil and ag.Description~=""and an.Desc~=nil then
an.Desc.Text=ag.Description
end

if ag.SpecialType=="Player"then

for as,at in pairs(ag.Options)do
table.remove(ag.Options,as)
end
PlayerTableRefresh()
ag.CurrentOption=ag.Options[1]
h.PlayerAdded:Connect(function()PlayerTableRefresh()end)
h.PlayerRemoving:Connect(function()PlayerTableRefresh()end)

end

Refresh()

if ag.CurrentOption then
if type(ag.CurrentOption)=="string"then
ag.CurrentOption={ag.CurrentOption}
end
if not ag.MultipleOptions and type(ag.CurrentOption)=="table"then
ag.CurrentOption={ag.CurrentOption[1]}
end
else
ag.CurrentOption={}
end

local as,at=0
for au,av in pairs(ag.CurrentOption)do
as=as+1
end
if as==1 then at=ag.CurrentOption[1]else at=ag.CurrentOption end
SafeCallback(at)
for au,av in pairs(an.List:GetChildren())do
if av.ClassName=="TextLabel"then
tween(av,{TextColor3=Color3.fromRGB(200,200,200),BackgroundTransparency=0.98})
end
end
tween(an.List[at],{TextColor3=Color3.fromRGB(240,240,240),BackgroundTransparency=0.95})

if ag.MultipleOptions then
if ag.CurrentOption and type(ag.CurrentOption)=="table"then
if#ag.CurrentOption==1 then
an.Selected.PlaceholderText=ag.CurrentOption[1]
elseif#ag.CurrentOption==0 then
an.Selected.PlaceholderText="None"
else
an.Selected.PlaceholderText=unpackt(ag.CurrentOption)
end
else
ag.CurrentOption={}
an.Selected.PlaceholderText="None"
end
for au,av in pairs(ag.CurrentOption)do
tween(an.List[av],{TextColor3=Color3.fromRGB(227,227,227),BackgroundTransparency=0.95})
end
else
an.Selected.PlaceholderText=ag.CurrentOption[1]or"None"
end
an.Selected.Text=""



end

function ai.Destroy(aq)
an.Visible=false
an:Destroy()
end

if ah then
b.Options[ah]=ai
end



return ai

end


function I.AddColorPicker(af,ag,ah)
local ai={IgnoreClass=false,Class="Colorpicker",Settings=ag}

ag=Kwargify({
Name="Color Picker",
Color=Color3.fromRGB(255,255,255),
Callback=function(aj)


end
},ag or{})

local function Color3ToHex(aj)
return string.format("#%02X%02X%02X",math.floor(aj.R*255),math.floor(aj.G*255),math.floor(aj.B*255))
end

ai.Color=Color3ToHex(ag.Color)

local aj=UDim2.new(0,75,0,22)
local ak=UDim2.new(0,219,0,129)

local al=s.Template.ColorPicker:Clone()
local am=al.CPBackground
local an=am.Display
local ao=am.MainCP
local ap=al.ColorSlider

al.Name=ag.Name
al.Title.Text=ag.Name
al.Visible=true
al.Parent=K
al.Size=UDim2.new(1.042,-25,0,38)
am.Size=aj
an.BackgroundTransparency=0

al.MouseEnter:Connect(function()
tween(al.UIStroke,{Color=Color3.fromRGB(87,84,104)})
end)
al.MouseLeave:Connect(function()
tween(al.UIStroke,{Color=Color3.fromRGB(64,61,76)})
end)

local function SafeCallback(aq,ar)
local as,at=pcall(function()
ag.Callback(aq)
end)
if not as then
d:Create(al,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundTransparency=0}):Play()
d:Create(al,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundColor3=Color3.fromRGB(85,0,0)}):Play()
d:Create(al.UIStroke,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{Transparency=1}):Play()
al.Title.Text="Callback Error"
print("Luna Interface Suite | "..ag.Name.." Callback Error "..tostring(at))
wait(0.5)
al.Title.Text=ag.Name
d:Create(al,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundTransparency=0.5}):Play()
d:Create(al,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundColor3=Color3.fromRGB(32,30,38)}):Play()
d:Create(al.UIStroke,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{Transparency=0.5}):Play()
end
if as and ar then
ar()
end
end

local aq=false

local ar=game.Players.LocalPlayer:GetMouse()
ao.Image="http://www.roblox.com/asset/?id=11415645739"
local as=false
local at=false
al.Interact.MouseButton1Down:Connect(function()
if not aq then
aq=true
tween(al,{Size=UDim2.new(1.042,-25,0,165)},nil,TweenInfo.new(0.6,Enum.EasingStyle.Exponential))
tween(am,{Size=ak})
tween(an,{BackgroundTransparency=1})
else
aq=false
tween(al,{Size=UDim2.new(1.042,-25,0,38)},nil,TweenInfo.new(0.6,Enum.EasingStyle.Exponential))
tween(am,{Size=aj})
tween(an,{BackgroundTransparency=0})
end
end)
c.InputEnded:Connect(function(au,av)if au.UserInputType==Enum.UserInputType.MouseButton1 or au.UserInputType==Enum.UserInputType.Touch then
as=false
at=false
end end)
ao.MouseButton1Down:Connect(function()
if aq then
as=true
end
end)
ao.MainPoint.MouseButton1Down:Connect(function()
if aq then
as=true
end
end)
ap.MouseButton1Down:Connect(function()
at=true
end)
ap.SliderPoint.MouseButton1Down:Connect(function()
at=true
end)
local au,av,aw=ag.Color:ToHSV()
local ax=Color3.fromHSV(au,av,aw)
local ay,az,aA=math.floor((au*255)+0.5),math.floor((av*255)+0.5),math.floor((aw*255)+0.5)
local aB=string.format("#%02X%02X%02X",ax.R*0xFF,ax.G*0xFF,ax.B*0xFF)
al.HexInput.InputBox.Text=aB
local function setDisplay(L,M,N)

ao.MainPoint.Position=UDim2.new(av,-ao.MainPoint.AbsoluteSize.X/2,1-aw,-ao.MainPoint.AbsoluteSize.Y/2)
ao.MainPoint.ImageColor3=Color3.fromHSV(L,M,N)
am.BackgroundColor3=Color3.fromHSV(L,1,1)
an.BackgroundColor3=Color3.fromHSV(L,M,N)

local O=L*ap.AbsoluteSize.X
ap.SliderPoint.Position=UDim2.new(0,O-ap.SliderPoint.AbsoluteSize.X/2,0.5,0)
ap.SliderPoint.ImageColor3=Color3.fromHSV(L,1,1)
local P=Color3.fromHSV(L,M,N)
local Q,R,S=math.floor((P.R*255)+0.5),math.floor((P.G*255)+0.5),math.floor((P.B*255)+0.5)
al.RInput.InputBox.Text=tostring(Q)
al.GInput.InputBox.Text=tostring(R)
al.BInput.InputBox.Text=tostring(S)
aB=string.format("#%02X%02X%02X",P.R*0xFF,P.G*0xFF,P.B*0xFF)
al.HexInput.InputBox.Text=aB
end
setDisplay(au,av,aw)
al.HexInput.InputBox.FocusLost:Connect(function()
if not pcall(function()
local L,M,N=string.match(al.HexInput.InputBox.Text,"^#?(%w%w)(%w%w)(%w%w)$")
local O=Color3.fromRGB(tonumber(L,16),tonumber(M,16),tonumber(N,16))
au,av,aw=O:ToHSV()
aB=al.HexInput.InputBox.Text
setDisplay()
ag.Color=O
end)
then
al.HexInput.InputBox.Text=aB
end
local L,M,N=math.floor((au*255)+0.5),math.floor((av*255)+0.5),math.floor((aw*255)+0.5)
ag.Color=Color3.fromRGB(L,M,N)
SafeCallback(Color3.fromRGB(L,M,N))
end)

local function rgbBoxes(L,M)
local N=tonumber(L.Text)
local O=Color3.fromHSV(au,av,aw)
local P,Q,R=math.floor((O.R*255)+0.5),math.floor((O.G*255)+0.5),math.floor((O.B*255)+0.5)
local S
if M=="R"then S=P;P=N elseif M=="G"then S=Q;Q=N else S=R;R=N end
if N then
N=math.clamp(N,0,255)
au,av,aw=Color3.fromRGB(P,Q,R):ToHSV()
setDisplay()
else
L.Text=tostring(S)
end
local T,U,V=math.floor((O.R*255)+0.5),math.floor((O.G*255)+0.5),math.floor((O.B*255)+0.5)
ag.Color=Color3.fromRGB(T,U,V)
end
al.RInput.InputBox.FocusLost:connect(function()
rgbBoxes(al.RInput.InputBox,"R")
SafeCallback(Color3.fromRGB(ay,az,aA))
end)
al.GInput.InputBox.FocusLost:connect(function()
rgbBoxes(al.GInput.InputBox,"G")
SafeCallback(Color3.fromRGB(ay,az,aA))
end)
al.BInput.InputBox.FocusLost:connect(function()
rgbBoxes(al.BInput.InputBox,"B")
SafeCallback(Color3.fromRGB(ay,az,aA))
end)
f.RenderStepped:connect(function()
if as then
local L=math.clamp(ar.X-ao.AbsolutePosition.X,0,ao.AbsoluteSize.X)
local M=math.clamp(ar.Y-ao.AbsolutePosition.Y,0,ao.AbsoluteSize.Y)
ao.MainPoint.Position=UDim2.new(0,L-ao.MainPoint.AbsoluteSize.X/2,0,M-ao.MainPoint.AbsoluteSize.Y/2)
av=L/ao.AbsoluteSize.X
aw=1-(M/ao.AbsoluteSize.Y)
an.BackgroundColor3=Color3.fromHSV(au,av,aw)
ao.MainPoint.ImageColor3=Color3.fromHSV(au,av,aw)
am.BackgroundColor3=Color3.fromHSV(au,1,1)
local N=Color3.fromHSV(au,av,aw)
local O,P,Q=math.floor((N.R*255)+0.5),math.floor((N.G*255)+0.5),math.floor((N.B*255)+0.5)
al.RInput.InputBox.Text=tostring(O)
al.GInput.InputBox.Text=tostring(P)
al.BInput.InputBox.Text=tostring(Q)
al.HexInput.InputBox.Text=string.format("#%02X%02X%02X",N.R*0xFF,N.G*0xFF,N.B*0xFF)
SafeCallback(Color3.fromRGB(O,P,Q))
ag.Color=Color3.fromRGB(O,P,Q)
ai.Color=ag.Color
end
if at then
local L=math.clamp(ar.X-ap.AbsolutePosition.X,0,ap.AbsoluteSize.X)
au=L/ap.AbsoluteSize.X
an.BackgroundColor3=Color3.fromHSV(au,av,aw)
ap.SliderPoint.Position=UDim2.new(0,L-ap.SliderPoint.AbsoluteSize.X/2,0.5,0)
ap.SliderPoint.ImageColor3=Color3.fromHSV(au,1,1)
am.BackgroundColor3=Color3.fromHSV(au,1,1)
ao.MainPoint.ImageColor3=Color3.fromHSV(au,av,aw)
local M=Color3.fromHSV(au,av,aw)
local N,O,P=math.floor((M.R*255)+0.5),math.floor((M.G*255)+0.5),math.floor((M.B*255)+0.5)
al.RInput.InputBox.Text=tostring(N)
al.GInput.InputBox.Text=tostring(O)
al.BInput.InputBox.Text=tostring(P)
al.HexInput.InputBox.Text=string.format("#%02X%02X%02X",M.R*0xFF,M.G*0xFF,M.B*0xFF)
SafeCallback(Color3.fromRGB(N,O,P))
ag.Color=Color3.fromRGB(N,O,P)
ai.Color=ag.Color
end
end)

function ai.Set(L,M)

M=Kwargify(ag,M or{})

ai.Settings=M
ag=M

al.Name=ag.Name
al.Title.Text=ag.Name
al.Visible=true

local N,O,P=ag.Color:ToHSV()
local Q=Color3.fromHSV(N,O,P)
local R,S,T=math.floor((Q.R*255)+0.5),math.floor((Q.G*255)+0.5),math.floor((Q.B*255)+0.5)
local U=string.format("#%02X%02X%02X",Q.R*0xFF,Q.G*0xFF,Q.B*0xFF)
al.HexInput.InputBox.Text=U
setDisplay(N,O,P)
SafeCallback(Color3.fromRGB(R,S,T))

ai.Color=ag.Color
end

function ai.Destroy(L)
al:Destroy()
end

if ah then
b.Options[ah]=ai
end

SafeCallback(ag.Color)

return ai
end


function I.BuildConfigSection(af)
if l then
I:AddLabel{Text="Config system unavailable. (Environment isStudio)",Style=3}
return"Config system unavailable."
end

local ag
local ah

local ai=s.Template.Title:Clone()
ai.Text="Configurations"
ai.Visible=true
ai.Parent=K
ai.TextTransparency=1
d:Create(ai,TweenInfo.new(0.4,Enum.EasingStyle.Exponential,Enum.EasingDirection.Out),{TextTransparency=0}):Play()

I:AddSection"Config Creator"

I:AddInput{
Name="Config Name",
Description="Insert a name for your to be created config.",
PlaceholderText="Name",
CurrentValue="",
Numeric=false,
MaxCharacters=nil,
Enter=false,
Callback=function(aj)
ag=aj
end,
}

local aj

I:AddButton{
Name="Create Config",
Description="Create a config with all of your current settings.",
Callback=function()
if not ag or string.gsub(ag," ","")==""then
b:Notification{
Title="Interface",
Icon="warning",
ImageSource="Material",
Content="Config name cannot be empty."
}
return
end

local ak,al=b:SaveConfig(ag)
if not ak then
b:Notification{
Title="Interface",
Icon="error",
ImageSource="Material",
Content="Unable to save config, return error: "..al
}
end

b:Notification{
Title="Interface",
Icon="info",
ImageSource="Material",
Content=string.format("Created config %q",ag),
}

aj:Set{Options=b:RefreshConfigList()}
end
}

I:AddSection"Config Load/Settings"


aj=I:AddDropdown{
Name="Select Config",
Description="Select a config to load your settings on.",
Options=b:RefreshConfigList(),
CurrentOption={},
MultipleOptions=false,
SpecialType=nil,
Callback=function(ak)
ah=ak
end,
}

I:AddButton{
Name="Load Config",
Description="Load your saved config settings.",
Callback=function()
local ak,al=b:LoadConfig(ah)
if not ak then
b:Notification{
Title="Interface",
Icon="error",
ImageSource="Material",
Content="Unable to load config, return error: "..al
}
return
end

b:Notification{
Title="Interface",
Icon="info",
ImageSource="Material",
Content=string.format("Loaded config %q",ah),
}
end
}

I:AddButton{
Name="Overwrite Config",
Description="Overwrite your current config settings.",
Callback=function()
local ak,al=b:SaveConfig(ah)
if not ak then
b:Notification{
Title="Interface",
Icon="error",
ImageSource="Material",
Content="Unable to overwrite config, return error: "..al
}
return
end

b:Notification{
Title="Interface",
Icon="info",
ImageSource="Material",
Content=string.format("Overwrote config %q",ah),
}
end
}

I:AddButton{
Name="Refresh Config List",
Description="Refresh the current config list.",
Callback=function()
aj:Set{Options=b:RefreshConfigList()}
end,
}

local ak
I:AddButton{
Name="Set as autoload",
Description="Set a config to auto load setting in your next session.",
Callback=function()
local al=ah
writefile(b.Folder.."/settings/autoload.txt",al)
ak:Set{Text="Current autoload config: "..al}

b:Notification{
Title="Interface",
Icon="info",
ImageSource="Material",
Content=string.format("Set %q to auto load",al),
}
end,
}

ak=I:AddParagraph{
Title="Current Auto Load",
Text="None"
}

I:AddButton{
Name="Delete Autoload",
Description="Delete The Autoload File",
Callback=function()

delfile(b.Folder.."/settings/autoload.txt")
ak:Set{Text="None"}

b:Notification{
Title="Interface",
Icon="info",
ImageSource="Material",
Content="Deleted Autoload",
}
end,
}

if isfile(b.Folder.."/settings/autoload.txt")then
local al=readfile(b.Folder.."/settings/autoload.txt")
ak:Set{Text="Current autoload config: "..al}
end
end

local af={Toggle=
{
Save=function(af,ag)
return{
type="Toggle",
flag=af,
state=ag.CurrentValue or false
}
end,
Load=function(af,ag)
if b.Options[af]then
b.Options[af]:Set{CurrentValue=ag.state}
end
end
},Slider=
{
Save=function(af,ag)
return{
type="Slider",
flag=af,
value=(ag.CurrentValue and tostring(ag.CurrentValue)),
}
end,
Load=function(af,ag)
if b.Options[af]and ag.value then
b.Options[af]:Set{CurrentValue=ag.value}
end
end
},Input=
{
Save=function(af,ag)
return{
type="Input",
flag=af,
text=ag.CurrentValue
}
end,
Load=function(af,ag)
if b.Options[af]and ag.text and type(ag.text)=="string"then
b.Options[af]:Set{CurrentValue=ag.text}
end
end
},Dropdown=
{
Save=function(af,ag)
return{
type="Dropdown",
flag=af,
value=ag.CurrentOption
}
end,
Load=function(af,ag)
if b.Options[af]and ag.value then
b.Options[af]:Set{CurrentOption=ag.value}
end
end
},Colorpicker=

{
Save=function(af,ag)
local function Color3ToHex(ah)
return string.format("#%02X%02X%02X",math.floor(ah.R*255),math.floor(ah.G*255),math.floor(ah.B*255))
end

return{
type="Colorpicker",
flag=af,
color=Color3ToHex(ag.Color)or nil,
alpha=ag.Alpha
}
end,
Load=function(af,ag)
local function HexToColor3(ah)
local ai=tonumber(ah:sub(2,3),16)/255
local aj=tonumber(ah:sub(4,5),16)/255
local ak=tonumber(ah:sub(6,7),16)/255
return Color3.new(ai,aj,ak)
end

if b.Options[af]and ag.color then
b.Options[af]:Set{Color=HexToColor3(ag.color)}
end
end
}
}


function I.BuildThemeSection(ag)

local ah=s.Template.Title:Clone()
ah.Text="Theming"
ah.Visible=true
ah.Parent=K
ah.TextTransparency=1
d:Create(ah,TweenInfo.new(0.4,Enum.EasingStyle.Exponential,Enum.EasingDirection.Out),{TextTransparency=0}):Play()

I:AddSection"Custom Editor"

local ai=I:AddColorPicker({
Name="Color 1",
Color=Color3.fromRGB(117,164,206),
},"LunaInterfaceSuitePrebuiltCPC1")

local aj=I:AddColorPicker({
Name="Color 2",
Color=Color3.fromRGB(123,201,201),
},"LunaInterfaceSuitePrebuiltCPC2")

local ak=I:AddColorPicker({
Name="Color 3",
Color=Color3.fromRGB(224,138,184),
},"LunaInterfaceSuitePrebuiltCPC3")

task.wait(1)

ai:Set{
Callback=function(al)
if aj and ak then
b.ThemeGradient=ColorSequence.new{ColorSequenceKeypoint.new(0.00,al or Color3.fromRGB(255,255,255)),ColorSequenceKeypoint.new(0.50,aj.Color or Color3.fromRGB(255,255,255)),ColorSequenceKeypoint.new(1.00,ak.Color or Color3.fromRGB(255,255,255))}
aa.ThemeRemote.Value=not aa.ThemeRemote.Value
end
end
}

aj:Set{
Callback=function(al)
if ai and ak then
b.ThemeGradient=ColorSequence.new{ColorSequenceKeypoint.new(0.00,ai.Color or Color3.fromRGB(255,255,255)),ColorSequenceKeypoint.new(0.50,al or Color3.fromRGB(255,255,255)),ColorSequenceKeypoint.new(1.00,ak.Color or Color3.fromRGB(255,255,255))}
aa.ThemeRemote.Value=not aa.ThemeRemote.Value
end
end
}

ak:Set{
Callback=function(al)
if aj and ai then
b.ThemeGradient=ColorSequence.new{ColorSequenceKeypoint.new(0.00,ai.Color or Color3.fromRGB(255,255,255)),ColorSequenceKeypoint.new(0.50,aj.Color or Color3.fromRGB(255,255,255)),ColorSequenceKeypoint.new(1.00,al or Color3.fromRGB(255,255,255))}
aa.ThemeRemote.Value=not aa.ThemeRemote.Value
end
end
}

I:AddSection"Preset Gradients"

for al,am in pairs(p)do
I:AddButton{
Name=tostring(al),
Callback=function()
ai:Set{Color=am[1]}
aj:Set{Color=am[2]}
ak:Set{Color=am[3]}
end,
}
end

end


local function BuildFolderTree()
if l then return"Config system unavailable."end
local ag={
b.Folder,
b.Folder.."/settings"
}

for ah=1,#ag do
local ai=ag[ah]
if not isfolder(ai)then
makefolder(ai)
end
end
end

local function SetFolder()

if l then return"Config system unavailable."end

if C.ConfigSettings.RootFolder~=nil and C.ConfigSettings.RootFolder~=""then
b.Folder=C.ConfigSettings.RootFolder.."/"..C.ConfigSettings.ConfigFolder
else
b.Folder=C.ConfigSettings.ConfigFolder
end

BuildFolderTree()
end

SetFolder()

function b.SaveConfig(ag,ah)
if l then return"Config system unavailable."end

if(not ah)then
return false,"Please select a config file."
end

local ai=b.Folder.."/settings/"..ah..".luna"

local aj={
objects={}
}

for ak,al in next,b.Options do
if not af[al.Class]then continue end
if al.IgnoreConfig then continue end

table.insert(aj.objects,af[al.Class].Save(ak,al))
end

local ak,al=pcall(e.JSONEncode,e,aj)
if not ak then
return false,"Unable to encode into JSON data"
end

writefile(ai,al)
return true
end

function b.LoadConfig(ag,ah)
if l then return"Config system unavailable."end

if(not ah)then
return false,"Please select a config file."
end

local ai=b.Folder.."/settings/"..ah..".luna"
if not isfile(ai)then return false,"Invalid file"end

local aj,ak=pcall(e.JSONDecode,e,readfile(ai))
if not aj then return false,"Unable to decode JSON data."end

for al,am in next,ak.objects do
if af[am.type]then
task.spawn(function()
af[am.type].Load(am.flag,am)
end)
end
end

return true
end

function b.LoadAutoloadConfig(ag)
if isfile(b.Folder.."/settings/autoload.txt")then

if l then return"Config system unavailable."end

local ah=readfile(b.Folder.."/settings/autoload.txt")

local ai,aj=b:LoadConfig(ah)
if not ai then
return b:Notification{
Title="Interface",
Icon="sparkle",
ImageSource="Material",
Content="Failed to load autoload config: "..aj,
}
end

b:Notification{
Title="Interface",
Icon="sparkle",
ImageSource="Material",
Content=string.format("Auto loaded config %q",ah),
}

end
end

function b.RefreshConfigList(ag)
if l then return"Config system unavailable."end

local ah=listfiles(b.Folder.."/settings")

local ai={}
for aj=1,#ah do
local ak=ah[aj]
if ak:sub(-5)==".luna"then
local al=ak:find(".luna",1,true)
local am=al

local an=ak:sub(al,al)
while an~="/"and an~="\\"and an~=""do
al=al-1
an=ak:sub(al,al)
end

if an=="/"or an=="\\"then
local ao=ak:sub(al+1,am-1)
if ao~="options"then
table.insert(ai,ao)
end
end
end
end

return ai
end
return I
end


s.Parent.Visible=true
tween(s.Parent,{BackgroundTransparency=0.1})
u.Visible=true
tween(u.Line,{BackgroundTransparency=0})

for af,ag in ipairs(ac.Controls:GetChildren())do
if ag.ClassName=="Frame"and ag.Name~="Theme"then
ag.Visible=true
tween(ag,{BackgroundTransparency=0.25})
tween(ag.UIStroke,{Transparency=0.5})
tween(ag.ImageLabel,{ImageTransparency=0.25})
end
end

ac.Controls.Close.ImageLabel.MouseButton1Click:Connect(function()
Hide(ac,E.Bind,true)
ae.Visible=false
E.State=false
if c.KeyboardEnabled==false then
aa.MobileSupport.Visible=true
end
end)
ac.Controls.Close.MouseEnter:Connect(function()
tween(ac.Controls.Close.ImageLabel,{ImageColor3=Color3.new(1,1,1)})
end)
ac.Controls.Close.MouseLeave:Connect(function()
tween(ac.Controls.Close.ImageLabel,{ImageColor3=Color3.fromRGB(195,195,195)})
end)

c.InputBegan:Connect(function(af,ag)
if ag then return end
if E.State then return end
if af.KeyCode==E.Bind then
Unhide(ac,E.CurrentTab)
aa.MobileSupport.Visible=false
ae.Visible=true
E.State=true
end
end)

ac.Logo.MouseButton1Click:Connect(function()
if u.Size.X.Offset==205 then
tween(s.Parent,{Size=UDim2.new(1,-55,s.Parent.Size.Y.Scale,s.Parent.Size.Y.Offset)})
tween(u,{Size=UDim2.new(u.Size.X.Scale,55,u.Size.Y.Scale,u.Size.Y.Offset)})
else
tween(s.Parent,{Size=UDim2.new(1,-205,s.Parent.Size.Y.Scale,s.Parent.Size.Y.Offset)})
tween(u,{Size=UDim2.new(u.Size.X.Scale,205,u.Size.Y.Scale,u.Size.Y.Offset)})
end
end)

ac.Controls.ToggleSize.ImageLabel.MouseButton1Click:Connect(function()
E.Size=not E.Size
if E.Size then
Minimize(ac)
ae.Visible=false
else
Maximise(ac)
ae.Visible=true
end
end)
ac.Controls.ToggleSize.MouseEnter:Connect(function()
tween(ac.Controls.ToggleSize.ImageLabel,{ImageColor3=Color3.new(1,1,1)})
end)
ac.Controls.ToggleSize.MouseLeave:Connect(function()
tween(ac.Controls.ToggleSize.ImageLabel,{ImageColor3=Color3.fromRGB(195,195,195)})
end)

ac.Controls.Theme.ImageLabel.MouseButton1Click:Connect(function()
if E.Settings then
E.Settings:Activate()
s.Settings.CanvasPosition=Vector2.new(0,698)
end
end)
ac.Controls.Theme.MouseEnter:Connect(function()
tween(ac.Controls.Theme.ImageLabel,{ImageColor3=Color3.new(1,1,1)})
end)
ac.Controls.Theme.MouseLeave:Connect(function()
tween(ac.Controls.Theme.ImageLabel,{ImageColor3=Color3.fromRGB(195,195,195)})
end)


aa.MobileSupport.Interact.MouseButton1Click:Connect(function()
Unhide(ac,E.CurrentTab)
ae.Visible=true
E.State=true
aa.MobileSupport.Visible=false
end)

return E
end

function b.Destroy(af)
ac.Visible=false
for ag,ah in ipairs(w:GetChildren())do
if ah.ClassName=="Frame"then
ah.Visible=false
ah:Destroy()
end
end
aa:Destroy()
end
local af=b:CreateWindow{
Name="Luna Example Window",
Subtitle="gay",
LogoID="82795327169782",
LoadingEnabled=true,
LoadingTitle="Zinner Hub Loading...",
LoadingSubtitle="by ! xHoang",

ConfigSettings={
RootFolder=nil,
ConfigFolder="Big Hub"
},

KeySystem=true,
KeySettings={
Title="Luna Example Key",
Subtitle="Key System",
Note="Best Key System Ever! Also, Please Use A HWID Keysystem like Pelican, Luarmor etc. that provide key strings based on your HWID since putting a simple string is very easy to bypass",
SaveInRoot=false,
SaveKey=true,
Key={"Example Key"},
SecondAction={
Enabled=true,
Type="Link",
Parameter=""
}
}
}
local ag=af:CreateTab{
Name="Tab Example",
Icon="view_in_ar",
ImageSource="Material",
ShowTitle=true
}
ag:AddSection"Section Example"
ag:AddButton{
Name="Button Example!",
Description=nil,
Callback=function()

end
}
ag:AddToggle({
Name="Toggle Example",
Description=nil,
CurrentValue=false,
Callback=function(ah)


end
},"Toggle")
ag:AddColorPicker({
Name="Color Picker Example",
Color=Color3.fromRGB(86,171,128),
Flag="ColorPicker1",
Callback=function(ah)


end
},"ColorPicker")
ag:AddSlider({
Name="Slider Example",
Range={0,200},
Increment=5,
CurrentValue=100,
Callback=function(ah)


end
},"Slider")
ag:AddInput({
Name="Dynamic Input Example",
Description=nil,
PlaceholderText="Input Placeholder",
CurrentValue="",
Numeric=false,
MaxCharacters=nil,
Enter=false,
Callback=function(ah)


end
},"Input")
ag:AddDropdown({
Name="Dropdown Example",
Description=nil,
Options={"Option 1","Option 2"},
CurrentOption={"Option 1"},
MultipleOptions=false,
SpecialType=nil,
Callback=function(ah)


end
},"Dropdown")
ag:AddBind({
Name="Bind Example",
Description=nil,
CurrentBind="Q",
HoldToInteract=false,
Callback=function(ah)


end,

OnChangedCallback=function(ah)


end,
},"Bind")
ag:AddLabel{
Text="Label Example",
Style=1
}
ag:AddParagraph{
Title="Paragraph Example ",
Text="This Is A Paragraph. You Can Type Very Long Strings Here And They'll Automatically Fit! This Counts As A Description Right? Right? Right? Right? Right? Right? Right? Right? Right? Right? Right? Right? Right? Right? Right? Also Did I Mention This Has Rich Text? Also Did I Mention This Has Rich Text? Also Did I Mention This Has Rich Text? Also Did I Mention This Has Rich Text? Also Did I Mention This Has Rich Text? Also Did I Mention This Has Rich Text?"
}
af:CreateHomeTab{
SupportedExecutors={},
DiscordInvite="1234",
Icon=1,
}
return b
