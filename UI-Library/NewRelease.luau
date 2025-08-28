
























local a="Release Version 3.1"

local b={Folder="Zinner",Values={},ThemeGradient=ColorSequence.new{ColorSequenceKeypoint.new(0.00,Color3.fromRGB(117,164,206)),ColorSequenceKeypoint.new(0.50,Color3.fromRGB(123,201,201)),ColorSequenceKeypoint.new(1.00,Color3.fromRGB(224,138,175))}}

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
return u
end

local function unpackt(q:table)
local r=""
local s=0
for t,u in pairs(q)do
if s<3 then
r=r..u..", "
s+=1
else
r=r.."..."
break
end
end

return r
end


local q=l and script.Parent:WaitForChild"Luna UI"or game:GetObjects"rbxassetid://86467455075715"[1]

local r

local function Hide(s,t,u)
r=s.Size
t=string.split(tostring(t),"Enum.KeyCode.")
t=t[2]
if u then
b:NewNotify{Title="Interface Hidden",Content="The interface has been hidden, you may reopen the interface by Pressing the UI Bind In Settings ("..tostring(t)..")",Icon="visibility_off"}
end
tween(s,{BackgroundTransparency=1})
tween(s.Elements,{BackgroundTransparency=1})
tween(s.Line,{BackgroundTransparency=1})
tween(s.Title.Title,{TextTransparency=1})
tween(s.Title.subtitle,{TextTransparency=1})
tween(s.Logo,{ImageTransparency=1})
tween(s.Navigation.Line,{BackgroundTransparency=1})

for v,w in ipairs(s.Controls:GetChildren())do
if w.ClassName=="Frame"then
tween(w,{BackgroundTransparency=1})
tween(w.UIStroke,{Transparency=1})
tween(w.ImageLabel,{ImageTransparency=1})
w.Visible=false
end
end
for v,w in ipairs(s.Navigation.Tabs:GetChildren())do
if w.ClassName=="Frame"and w.Name~="InActive Template"then
d:Create(w,TweenInfo.new(0.3,Enum.EasingStyle.Exponential),{BackgroundTransparency=1}):Play()
d:Create(w.ImageLabel,TweenInfo.new(0.3,Enum.EasingStyle.Exponential),{ImageTransparency=1}):Play()
d:Create(w.DropShadowHolder.DropShadow,TweenInfo.new(0.3,Enum.EasingStyle.Exponential),{ImageTransparency=1}):Play()
d:Create(w.UIStroke,TweenInfo.new(0.3,Enum.EasingStyle.Exponential),{Transparency=1}):Play()
end
end

task.wait(0.28)
s.Size=UDim2.new(0,0,0,0)
s.Parent.ShadowHolder.Visible=false
task.wait()
s.Elements.Parent.Visible=false
s.Visible=false
end


if gethui then
q.Parent=gethui()
elseif syn and syn.protect_gui then
syn.protect_gui(q)
q.Parent=k
elseif not l and k:FindFirstChild"RobloxGui"then
q.Parent=k:FindFirstChild"RobloxGui"
elseif not l then
q.Parent=k
end

if gethui then
for s,t in ipairs(gethui():GetChildren())do
if t.Name==q.Name and t~=q then
Hide(t.SmartWindow)
t.Enabled=false
t.Name="Luna-Old"
end
end
elseif not l then
for s,t in ipairs(k:GetChildren())do
if t.Name==q.Name and t~=q then
Hide(t.SmartWindow)
t.Enabled=false
t.Name="Luna-Old"
end
end
end

q.Enabled=false
q.SmartWindow.Visible=false
q.Notifications.Template.Visible=false
q.DisplayOrder=1000000000

local s:Frame=q.SmartWindow
local t=s.Drag
local u=q.Drag
local v=u and u.Interact or nil
local w=u and u.Drag or nil
local x=s.Elements.Interactions
local y=s.LoadingFrame
local z=s.Navigation local A=
z.Tabs
local B=q.Notifications
local C:Frame=s.KeySystem





















































































local function Draggable(D,E,F,G)
pcall(function()
local H,I,J,K

local function connectFunctions()
if u and F then
u.MouseEnter:Connect(function()
if not H then
d:Create(w,TweenInfo.new(0.25,Enum.EasingStyle.Back,Enum.EasingDirection.Out),{BackgroundTransparency=0.5,Size=UDim2.new(0,120,0,4)}):Play()
end
end)

u.MouseLeave:Connect(function()
if not H then
d:Create(w,TweenInfo.new(0.25,Enum.EasingStyle.Back,Enum.EasingDirection.Out),{BackgroundTransparency=0.7,Size=UDim2.new(0,100,0,4)}):Play()
end
end)
end
end

connectFunctions()

D.InputBegan:Connect(function(L)
if L.UserInputType==Enum.UserInputType.MouseButton1 or L.UserInputType==Enum.UserInputType.Touch then
H=true
J=L.Position
K=E.Position

if F then
d:Create(w,TweenInfo.new(0.35,Enum.EasingStyle.Back,Enum.EasingDirection.Out),{Size=UDim2.new(0,110,0,4),BackgroundTransparency=0}):Play()
end

L.Changed:Connect(function()
if L.UserInputState==Enum.UserInputState.End then
H=false
connectFunctions()

if F then
d:Create(w,TweenInfo.new(0.35,Enum.EasingStyle.Back,Enum.EasingDirection.Out),{Size=UDim2.new(0,100,0,4),BackgroundTransparency=0.7}):Play()
end
end
end)
end
end)

D.InputChanged:Connect(function(L)
if L.UserInputType==Enum.UserInputType.MouseMovement or L.UserInputType==Enum.UserInputType.Touch then
I=L
end
end)

c.InputChanged:Connect(function(L)
if L==I and H then
local M=L.Position-J

local N=UDim2.new(K.X.Scale,K.X.Offset+M.X,K.Y.Scale,K.Y.Offset+M.Y)
d:Create(E,TweenInfo.new(0.35,Enum.EasingStyle.Exponential,Enum.EasingDirection.Out),{Position=N}):Play()

if u then
local O=UDim2.new(K.X.Scale,K.X.Offset+M.X,K.Y.Scale,K.Y.Offset+M.Y+240)
u.Position=O
end
end
end)

end)
end

function b.NewNotify(D,E)
task.spawn(function()
E=Kwargify({
Title="Missing Title",
Content="Missing or Unknown Content",
Icon="view_in_ar",
ImageSource="Material"
},E or{})


local F=B.Template:Clone()
F.Name=E.Title
F.Parent=B
F.LayoutOrder=#B:GetChildren()
F.Visible=false


F.Title.Text=E.Title
F.Description.Text=E.Content
F.Icon.Image=GetIcon(E.Icon,E.ImageSource)


F.BackgroundTransparency=1
F.Title.TextTransparency=1
F.Description.TextTransparency=1
F.UIStroke.Transparency=1
F.Shadow.ImageTransparency=1
F.Icon.ImageTransparency=1
F.Icon.BackgroundTransparency=1

task.wait()


F.Size=UDim2.new(1,0,0,-B:FindFirstChild"UIListLayout".Padding.Offset)

F.Icon.Size=UDim2.new(0,28,0,28)
F.Icon.Position=UDim2.new(0,16,0.5,-1)

F.Visible=true

F.Description.Size=UDim2.new(1,-65,0,math.huge)
local G=F.Description.TextBounds.Y+55
F.Description.Size=UDim2.new(1,-65,0,G-35)
F.Size=UDim2.new(1,0,0,-B:FindFirstChild"UIListLayout".Padding.Offset)
d:Create(F,TweenInfo.new(0.6,Enum.EasingStyle.Exponential),{Size=UDim2.new(1,0,0,G)}):Play()

task.wait(0.15)
d:Create(F,TweenInfo.new(0.4,Enum.EasingStyle.Exponential),{BackgroundTransparency=0.45}):Play()
d:Create(F.Title,TweenInfo.new(0.3,Enum.EasingStyle.Exponential),{TextTransparency=0}):Play()

task.wait(0.05)

d:Create(F.Icon,TweenInfo.new(0.3,Enum.EasingStyle.Exponential),{ImageTransparency=0}):Play()

task.wait(0.05)
d:Create(F.Description,TweenInfo.new(0.3,Enum.EasingStyle.Exponential),{TextTransparency=0.35}):Play()
d:Create(F.UIStroke,TweenInfo.new(0.4,Enum.EasingStyle.Exponential),{Transparency=0.95}):Play()
d:Create(F.Shadow,TweenInfo.new(0.3,Enum.EasingStyle.Exponential),{ImageTransparency=0.82}):Play()

local H=math.min(math.max((#F.Description.Text*0.1)+2.5,3),10)
task.wait(E.Duration or H)

F.Icon.Visible=false
d:Create(F,TweenInfo.new(0.4,Enum.EasingStyle.Exponential),{BackgroundTransparency=1}):Play()
d:Create(F.UIStroke,TweenInfo.new(0.4,Enum.EasingStyle.Exponential),{Transparency=1}):Play()
d:Create(F.Shadow,TweenInfo.new(0.3,Enum.EasingStyle.Exponential),{ImageTransparency=1}):Play()
d:Create(F.Title,TweenInfo.new(0.3,Enum.EasingStyle.Exponential),{TextTransparency=1}):Play()
d:Create(F.Description,TweenInfo.new(0.3,Enum.EasingStyle.Exponential),{TextTransparency=1}):Play()

d:Create(F,TweenInfo.new(1,Enum.EasingStyle.Exponential),{Size=UDim2.new(1,-90,0,0)}):Play()

task.wait(1)

d:Create(F,TweenInfo.new(1,Enum.EasingStyle.Exponential),{Size=UDim2.new(1,-90,0,-B:FindFirstChild"UIListLayout".Padding.Offset)}):Play()

F.Visible=false
F:Destroy()
end)
end

local function Unhide(D,E)
D.Size=r
D.Elements.Visible=true
D.Visible=true
task.wait()
tween(D,{BackgroundTransparency=0.2})
tween(D.Elements,{BackgroundTransparency=0.08})
tween(D.Line,{BackgroundTransparency=0})
tween(D.Title.Title,{TextTransparency=0})
tween(D.Title.subtitle,{TextTransparency=0})
tween(D.Logo,{ImageTransparency=0})
tween(D.Navigation.Line,{BackgroundTransparency=0})

for F,G in ipairs(D.Controls:GetChildren())do
if G.ClassName=="Frame"and G.Name~="Theme"then
G.Visible=true
tween(G,{BackgroundTransparency=0.25})
tween(G.UIStroke,{Transparency=0.5})
tween(G.ImageLabel,{ImageTransparency=0.25})
end
end
for F,G in ipairs(D.Navigation.Tabs:GetChildren())do
if G.ClassName=="Frame"and G.Name~="InActive Template"then
if G.Name==E then
d:Create(G,TweenInfo.new(0.3,Enum.EasingStyle.Exponential),{BackgroundTransparency=0}):Play()
d:Create(G.UIStroke,TweenInfo.new(0.3,Enum.EasingStyle.Exponential),{Transparency=0.41}):Play()
end
d:Create(G.ImageLabel,TweenInfo.new(0.3,Enum.EasingStyle.Exponential),{ImageTransparency=0}):Play()
d:Create(G.DropShadowHolder.DropShadow,TweenInfo.new(0.3,Enum.EasingStyle.Exponential),{ImageTransparency=1}):Play()
end
end

end

local D
local E
local F
if j.ViewportSize.X>774 and j.ViewportSize.Y>503 then
D=UDim2.fromOffset(675,424)
E=UDim2.fromOffset(500,42)
else
D=UDim2.fromOffset(j.ViewportSize.X-100,j.ViewportSize.Y-100)
E=UDim2.fromOffset(j.ViewportSize.X-275,42)
end

local function Maximise(G)
G.Controls.ToggleSize.ImageLabel.Image="rbxassetid://10137941941"
tween(G,{Size=D})
G.Elements.Visible=true
G.Navigation.Visible=true
tween(G,{Position=F})
end

local function Minimize(G)
F=G.Position
G.Controls.ToggleSize.ImageLabel.Image="rbxassetid://11036884234"
G.Elements.Visible=false
G.Navigation.Visible=false
tween(G,{Size=E})
end

function b.NewWindow(G,H)

H=Kwargify({
Title="Luna UI Example Window",
SubTitle="",
LogoID="6031097225",
LoadingEnabled=true,
LoadingTitle="Luna Interface Suite",
LoadingSubtitle="by Nebula Softworks",

ConfigSettings={},

KeySystem=false,
KeySettings={}
},H or{})

H.ConfigSettings=Kwargify({
RootFolder=nil,
ConfigFolder="Big Hub"
},H.ConfigSettings or{})

H.KeySettings=Kwargify({
Title=H.Title,
Subtitle="Key System",
Note="No Instructions",
SaveInRoot=false,
SaveKey=true,
Key={""},
SecondAction={}
},H.KeySettings or{})

H.KeySettings.SecondAction=Kwargify({
Enabled=false,
Type="Discord",
Parameter=""
},H.KeySettings.SecondAction)

local I=false

local J={Bind=Enum.KeyCode.K,CurrentTab=nil,State=true,Size=false,Settings=nil}

s.Title.Title.Text=H.Title
s.Title.subtitle.Text=H.SubTitle
s.Logo.Image="rbxassetid://"..H.LogoID
s.Visible=true
s.BackgroundTransparency=1
s.Size=D
s.Size=UDim2.fromOffset(s.Size.X.Offset-70,s.Size.Y.Offset-55)
s.Parent.ShadowHolder.Size=s.Size
y.Frame.Frame.Title.TextTransparency=1
y.Frame.Frame.Subtitle.TextTransparency=1
y.Version.TextTransparency=1
y.Frame.ImageLabel.ImageTransparency=1

tween(x.Parent,{BackgroundTransparency=1})
x.Parent.Visible=false

y.Frame.Frame.Title.Text=H.LoadingTitle
y.Frame.Frame.Subtitle.Text=H.LoadingSubtitle
y.Version.Text=y.Frame.Frame.Title.Text=="Luna Interface Suite"and a or"Luna UI"

z.Player.icon.ImageLabel.Image=h:GetUserThumbnailAsync(h.LocalPlayer.UserId,Enum.ThumbnailType.HeadShot,Enum.ThumbnailSize.Size48x48)
z.Player.Namez.Text=h.LocalPlayer.DisplayName
z.Player.TextLabel.Text=h.LocalPlayer.Name

for K,L in pairs(s.Controls:GetChildren())do
L.Visible=false
end

s:GetPropertyChangedSignal"Position":Connect(function()
s.Parent.ShadowHolder.Position=s.Position
end)
s:GetPropertyChangedSignal"Size":Connect(function()
s.Parent.ShadowHolder.Size=s.Size
end)

y.Visible=true





















q.Enabled=true

if H.KeySystem then
local K=H.KeySettings

Draggable(t,s)
Draggable(q.MobileSupport,q.MobileSupport)
if u then Draggable(v,s,true,255)end

if not H.KeySettings then
I=true
return
end

H.KeySettings.FileName="key"

if typeof(H.KeySettings.Key)=="string"then H.KeySettings.Key={H.KeySettings.Key}end

local L=H.KeySettings.SaveInRoot and"Luna/Configurations/"..H.ConfigSettings.RootFolder.."/"..H.ConfigSettings.ConfigFolder.."/Key System/"or"Luna/Configurations/"..H.ConfigSettings.ConfigFolder.."/Key System/"

if isfile and isfile(L..H.KeySettings.FileName..".luna")then
for M,N in ipairs(H.KeySettings.Key)do
if string.find(readfile(L..H.KeySettings.FileName..".luna"),N)then
I=true
break
end
end
end

if not I then

local M=C.Action.Copy
local N=K.SecondAction.Type

if N=="Discord"then
M=C.Action.Discord
end

local O=math.random(2,5)

C.Visible=true
C.Title.Text=H.KeySettings.Title
C.Subtitle.Text=H.KeySettings.Subtitle
C.textshit.Text=H.KeySettings.Note

if K.SecondAction.Enabled==true then
M.Visible=true
end

M.Interact.MouseButton1Click:Connect(function()
if N=="Discord"then
setclipboard(tostring("https://discord.gg/"..K.SecondAction.Parameter))
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
args={code=K.SecondAction.Parameter}
}
}
end
else
setclipboard(tostring(K.SecondAction.Parameter))
end
end)

C.Action.Submit.Interact.MouseButton1Click:Connect(function()
if#C.Input.InputBox.Text==0 then return end
local P=false
local Q=''
for R,S in ipairs(H.KeySettings.Key)do
if C.Input.InputBox.Text==S then
P=true
Q=S
break
end
end
if P then
for R,S in pairs(C:GetDescendants())do
if S.ClassName~="UICorner"and S.ClassName~="UIPadding"then
if S.ClassName~="UIStroke"then
tween(S,{BackgroundTransparency=1},nil,TweenInfo.new(0.6,Enum.EasingStyle.Exponential))
end
if S.ClassName=="ImageButton"then
tween(S,{ImageTransparency=1},nil,TweenInfo.new(0.5,Enum.EasingStyle.Exponential))
end
if S.ClassName=="TextLabel"then
tween(S,{TextTransparency=1},nil,TweenInfo.new(0.4,Enum.EasingStyle.Exponential))
end
if S.ClassName=="UIStroke"then
tween(S,{Transparency=1},nil,TweenInfo.new(0.5,Enum.EasingStyle.Exponential))
end
end
end
tween(C,{BackgroundTransparency=1},nil,TweenInfo.new(0.6,Enum.EasingStyle.Exponential))
task.wait(0.51)
I=true
C.Visible=false
if H.KeySettings.SaveKey then
if writefile then
writefile(L..H.KeySettings.FileName..".luna",Q)
end
b:NewNotify{Title="Key System",Content="The key for this script has been saved successfully.",Icon="lock_open"}
end
else
if O==0 then

game.Players.LocalPlayer:Kick"No Attempts Remaining"
game:Shutdown()
end
C.Input.InputBox.Text="Incorrect Key"
O=O-1
task.wait(0.4)
C.Input.InputBox.Text=""
end
end)

C.Close.MouseButton1Click:Connect(function()

b:Destroy()
end)
end
end

if H.KeySystem then
repeat task.wait()until I
end

if H.LoadingEnabled then
task.wait(0.3)
d:Create(y.Frame.Frame.Title,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{TextTransparency=0}):Play()
d:Create(y.Frame.ImageLabel,TweenInfo.new(0.3,Enum.EasingStyle.Exponential),{ImageTransparency=0}):Play()
task.wait(0.05)
d:Create(y.Frame.Frame.Subtitle,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{TextTransparency=0}):Play()
d:Create(y.Version,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{TextTransparency=0}):Play()
task.wait(0.29)
d:Create(y.Frame.ImageLabel,TweenInfo.new(1.7,Enum.EasingStyle.Back,Enum.EasingDirection.Out,2,false,0.2),{Rotation=450}):Play()

task.wait(3.32)

d:Create(y.Frame.Frame.Title,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{TextTransparency=1}):Play()
d:Create(y.Frame.ImageLabel,TweenInfo.new(0.3,Enum.EasingStyle.Exponential),{ImageTransparency=1}):Play()
task.wait(0.05)
d:Create(y.Frame.Frame.Subtitle,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{TextTransparency=1}):Play()
d:Create(y.Version,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{TextTransparency=1}):Play()
wait(0.3)
d:Create(y,TweenInfo.new(0.5,Enum.EasingStyle.Exponential,Enum.EasingDirection.Out),{BackgroundTransparency=1}):Play()
end

d:Create(s,TweenInfo.new(0.5,Enum.EasingStyle.Exponential,Enum.EasingDirection.Out),{BackgroundTransparency=0.2,Size=D}):Play()
d:Create(s.Parent.ShadowHolder,TweenInfo.new(0.5,Enum.EasingStyle.Exponential,Enum.EasingDirection.Out),{Size=D}):Play()
d:Create(s.Title.Title,TweenInfo.new(0.35,Enum.EasingStyle.Exponential,Enum.EasingDirection.Out),{TextTransparency=0}):Play()
d:Create(s.Title.subtitle,TweenInfo.new(0.35,Enum.EasingStyle.Exponential,Enum.EasingDirection.Out),{TextTransparency=0}):Play()
d:Create(s.Logo,TweenInfo.new(0.35,Enum.EasingStyle.Exponential,Enum.EasingDirection.Out),{ImageTransparency=0}):Play()
d:Create(z.Player.icon.ImageLabel,TweenInfo.new(0.35,Enum.EasingStyle.Exponential,Enum.EasingDirection.Out),{ImageTransparency=0}):Play()
d:Create(z.Player.icon.UIStroke,TweenInfo.new(0.35,Enum.EasingStyle.Exponential,Enum.EasingDirection.Out),{Transparency=0}):Play()
d:Create(s.Line,TweenInfo.new(0.35,Enum.EasingStyle.Exponential,Enum.EasingDirection.Out),{BackgroundTransparency=0}):Play()
wait(0.4)
y.Visible=false

Draggable(t,s)
Draggable(q.MobileSupport,q.MobileSupport)
if u then Draggable(v,s,true,255)end

x.Template.LayoutOrder=1000000000
x.Template.Visible=false
z.Tabs["InActive Template"].LayoutOrder=1000000000
z.Tabs["InActive Template"].Visible=false

local K=true

function J.CreateHomeTab(L,M)

M=Kwargify({
Icon=1,
SupportedExecutors={"Vega X","Delta","Nihon","Xeno"},
DiscordInvite="noinvitelink"
},M or{})

local N={}

local O=z.Tabs.Home
O.Visible=true
if M.Icon==2 then
O.ImageLabel.Image=GetIcon("dashboard","Material")
end

local P=x.Home
P.Visible=true

function N.Activate(Q)
tween(O.ImageLabel,{ImageColor3=Color3.fromRGB(255,255,255)})
tween(O,{BackgroundTransparency=0})
tween(O.UIStroke,{Transparency=0.41})

x.UIPageLayout:JumpTo(P)

task.wait(0.05)

for R,S in ipairs(z.Tabs:GetChildren())do
if S.Name~="InActive Template"and S.ClassName=="Frame"and S~=O then
tween(S.ImageLabel,{ImageColor3=Color3.fromRGB(221,221,221)})
tween(S,{BackgroundTransparency=1})
tween(S.UIStroke,{Transparency=1})
end

end

J.CurrentTab="Home"
end

N:Activate()
K=false
O.Interact.MouseButton1Click:Connect(function()
N:Activate()
end)


P.icon.ImageLabel.Image=h:GetUserThumbnailAsync(h.LocalPlayer.UserId,Enum.ThumbnailType.HeadShot,Enum.ThumbnailSize.Size420x420)
P.player.Text.Text="Hello, "..h.LocalPlayer.DisplayName
P.player.user.Text=h.LocalPlayer.Name.." - "..H.Title

P.detailsholder.dashboard.Client.Title.Text=(l and"Debugging (Studio)"or identifyexecutor())or"Your Executor Does Not Support identifyexecutor."
for Q,R in pairs(M.SupportedExecutors)do
if l then P.detailsholder.dashboard.Client.Subtitle.Text="Luna Interface Suite - Debugging Mode"break end
if R==identifyexecutor()then
P.detailsholder.dashboard.Client.Subtitle.Text="Your Executor Supports This Script."
break
else
P.detailsholder.dashboard.Client.Subtitle.Text="Your Executor Isn't Officialy Supported By This Script."
break
end
end



P.detailsholder.dashboard.Discord.Interact.MouseButton1Click:Connect(function()
setclipboard(tostring("https://discord.gg/"..M.DiscordInvite))
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
args={code=M.DiscordInvite}
}
}
end
end)

local Q=0
local function getPing()return math.clamp(game:GetService"Stats".Network.ServerStatsItem["Data Ping"]:GetValue(),10,700)end

local function checkFriends()
if Q==0 then

Q=25

local R={}
local S=0
local T=0
local U=0

local V=h:GetFriendsAsync(i.UserId)
while true do
for W,X in V:GetCurrentPage()do
S+=1
table.insert(R,Data)
end

if V.IsFinished then

break
else

V:AdvanceToNextPageAsync()
end
end
for W,X in pairs(i:GetFriendsOnline())do
T+=1
end

for W,X in pairs(R)do
if h:FindFirstChild(X.Username)then
U=U+1
end
end

P.detailsholder.dashboard.Friends.All.Value.Text=tostring(S).." friends"
P.detailsholder.dashboard.Friends.Offline.Value.Text=tostring(S-T).." friends"
P.detailsholder.dashboard.Friends.Online.Value.Text=tostring(T).." friends"
P.detailsholder.dashboard.Friends.InGame.Value.Text=tostring(U).." friends"

else
Q-=1
end
end

local function format(R)
return string.format("%02i",R)
end

local function convertToHMS(R)
local S=(R-R%60)/60
R=R-S*60
local T=(S-S%60)/60
S=S-T*60
return format(T)..":"..format(S)..":"..format(R)
end

coroutine.wrap(function()
while task.wait()do



P.detailsholder.dashboard.Server.Players.Value.Text=#h:GetPlayers().." playing"
P.detailsholder.dashboard.Server.MaxPlayers.Value.Text=h.MaxPlayers.." players can join this server"


P.detailsholder.dashboard.Server.Latency.Value.Text=l and tostring(math.round((h.LocalPlayer:GetNetworkPing()*2)/0.01)).."ms"or tostring(math.floor(getPing()).."ms")


P.detailsholder.dashboard.Server.Time.Value.Text=convertToHMS(time())


P.detailsholder.dashboard.Server.Region.Value.Text=g:GetCountryRegionForPlayerAsync(h.LocalPlayer)

checkFriends()
end
end)()



end

function J.AddTab(L,M)

local N={}

M=Kwargify({
Title="Tab",
ShowTitle=true,
Icon="view_in_ar",
ImageSource="Material"
},M or{})

local O=z.Tabs["InActive Template"]:Clone()

O.Name=M.Title
O.TextLabel.Text=M.Title
O.Parent=z.Tabs
O.ImageLabel.Image=string.find(M.Icon,"rbxassetid://")and M.Icon or GetIcon(M.Icon,M.ImageSource)

O.Visible=true

local P=x.Template:Clone()
P.Name=M.Title
P.Title.Visible=M.ShowTitle
P.Title.Text=M.Title
P.Visible=true

N.Page=P

if M.ShowTitle==false then
P.UIPadding.PaddingTop=UDim.new(0,10)
end

P.LayoutOrder=#x:GetChildren()-3

for Q,R in ipairs(P:GetChildren())do
if R.ClassName=="Frame"or R.ClassName=="TextLabel"and R.Name~="Title"then
R:Destroy()
end
end
P.Parent=x

function N.Activate(Q)
tween(O.ImageLabel,{ImageColor3=Color3.fromRGB(255,255,255)})
tween(O,{BackgroundTransparency=0})
tween(O.UIStroke,{Transparency=0.41})

x.UIPageLayout:JumpTo(P)

task.wait(0.05)

for R,S in ipairs(z.Tabs:GetChildren())do
if S.Name~="InActive Template"and S.ClassName=="Frame"and S~=O then
tween(S.ImageLabel,{ImageColor3=Color3.fromRGB(221,221,221)})
tween(S,{BackgroundTransparency=1})
tween(S.UIStroke,{Transparency=1})
end

end

J.CurrentTab=M.Title
end

if K then
N:Activate()
end

task.wait(0.01)

O.Interact.MouseButton1Click:Connect(function()
N:Activate()
end)

K=false


function N.AddSection(Q,R:string)

local S={}

if R==nil then R="Section"end

S.Name=R

local T=x.Template.Section:Clone()
T.Text=R
T.Visible=true
T.Parent=P
local U=T.Frame

T.TextTransparency=1
tween(T,{TextTransparency=0})

function S.Set(V,W)
T.Text=W
end

function S.Destroy(V)
T:Destroy()
end


function S.CreateDivider(V)
U.Position=UDim2.new(0,0,0,28)
local W=x.Template.Divider:Clone()
W.Parent=U
W.Size=UDim2.new(1,0,0,18)
W.Line.BackgroundTransparency=1
tween(W.Line,{BackgroundTransparency=0})
end


function S.AddButton(V,W)
U.Position=UDim2.new(0,0,0,28)

W=Kwargify({
Title="Button",
Description=nil,
Callback=function()

end,
},W or{})

local X={
Hover=false,
Settings=W
}


local Y
if W.Description==nil and W.Description~=""then
Y=x.Template.Button:Clone()
else
Y=x.Template.ButtonDesc:Clone()
end
Y.Name=W.Title
Y.Title.Text=W.Title
if W.Description~=nil and W.Description~=""then
Y.Desc.Text=W.Description
end
Y.Visible=true
Y.Parent=U

Y.UIStroke.Transparency=1
Y.Title.TextTransparency=1
if W.Description~=nil and W.Description~=""then
Y.Desc.TextTransparency=1
end

d:Create(Y,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundTransparency=0.5}):Play()
d:Create(Y.UIStroke,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{Transparency=0.5}):Play()
d:Create(Y.Title,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{TextTransparency=0}):Play()
if W.Description~=nil and W.Description~=""then
d:Create(Y.Desc,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{TextTransparency=0}):Play()
end

Y.Interact.MouseButton1Click:Connect(function()
local Z,_=pcall(W.Callback)

if not Z then
d:Create(Y,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundTransparency=0}):Play()
d:Create(Y,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundColor3=Color3.fromRGB(85,0,0)}):Play()
d:Create(Y.UIStroke,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{Transparency=1}):Play()
Y.Title.Text="Callback Error"
print("Luna Interface Suite | "..W.Title.." Callback Error "..tostring(_))
wait(0.5)
Y.Title.Text=W.Title
d:Create(Y,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundTransparency=0.5}):Play()
d:Create(Y,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundColor3=Color3.fromRGB(32,30,38)}):Play()
d:Create(Y.UIStroke,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{Transparency=0.5}):Play()
else
tween(Y.UIStroke,{Color=Color3.fromRGB(136,131,163)})
wait(0.2)
if X.Hover then
tween(Y.UIStroke,{Color=Color3.fromRGB(87,84,104)})
else
tween(Y.UIStroke,{Color=Color3.fromRGB(64,61,76)})
end
end
end)

Y.MouseEnter:Connect(function()
X.Hover=true
tween(Y.UIStroke,{Color=Color3.fromRGB(87,84,104)})
end)

Y.MouseLeave:Connect(function()
X.Hover=false
tween(Y.UIStroke,{Color=Color3.fromRGB(64,61,76)})
end)

function X.Set(Z,_)
_=Kwargify({
Name=W.Title,
Description=W.Description,
Callback=W.Callback
},_ or{})

W=_
X.Settings=_

Y.Name=W.Title
Y.Title.Text=W.Title
if W.Description~=nil and W.Description~=""and Y.Desc~=nil then
Y.Desc.Text=W.Description
end
end

function X.Destroy(Z)
Y.Visible=false
Y:Destroy()
end

return X
end


function S.AddLabel(V,W)
U.Position=UDim2.new(0,0,0,28)

local X={}

W=Kwargify({
Title="Label",
Style=1
},W or{})

X.Settings=W

local Y
if W.Style==1 then
Y=x.Template.Label:Clone()
elseif W.Style==2 then
Y=x.Template.Info:Clone()
elseif W.Style==3 then
Y=x.Template.Warn:Clone()
end

Y.Text.Text=W.Text
Y.Visible=true
Y.Parent=U

Y.BackgroundTransparency=1
Y.UIStroke.Transparency=1
Y.Text.TextTransparency=1

if W.Style~=1 then
d:Create(Y,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundTransparency=0.8}):Play()
else
d:Create(Y,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundTransparency=1}):Play()
end
d:Create(Y.UIStroke,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{Transparency=0.5}):Play()
d:Create(Y.Text,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{TextTransparency=0}):Play()

function X.Set(Z,_)
W.Title=_
X.Settings=W
Y.Text.Text=_
end

function X.Destroy(Z)
Y.Visible=false
Y:Destroy()
end

return X
end


function S.AddParagraph(V,W)
U.Position=UDim2.new(0,0,0,28)

W=Kwargify({
Title="Paragraph",
Content=""
},W or{})

local X={
Settings=W
}

local Y=x.Template.Paragraph:Clone()
Y.Title.Text=W.Title
Y.Text.Text=W.Content
Y.Visible=true
Y.Parent=U

Y.BackgroundTransparency=1
Y.UIStroke.Transparency=1
Y.Title.TextTransparency=1
Y.Text.TextTransparency=1

d:Create(Y,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundTransparency=1}):Play()
d:Create(Y.UIStroke,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{Transparency=0.5}):Play()
d:Create(Y.Title,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{TextTransparency=0}):Play()
d:Create(Y.Text,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{TextTransparency=0}):Play()

function X.Update(Z)
Y.Text.Size=UDim2.new(Y.Text.Size.X.Scale,Y.Text.Size.X.Offset,0,math.huge)
Y.Text.Size=UDim2.new(Y.Text.Size.X.Scale,Y.Text.Size.X.Offset,0,Y.Text.TextBounds.Y)
tween(Y,{Size=UDim2.new(Y.Size.X.Scale,Y.Size.X.Offset,0,Y.Text.TextBounds.Y+40)})
end

function X.Set(Z,_)

_=Kwargify({
Title=W.Title,
Text=W.Content
},_ or{})

X.Settings=_

Y.Title.Text=_.Title
Y.Text.Text=_.Content

X:Update()

end

function X.Destroy(Z)
Y.Visible=false
Y:Destroy()
end

X:Update()

return X
end


function S.AddSlider(V,W,X)
U.Position=UDim2.new(0,0,0,28)
local Y={IgnoreConfig=false,Class="Slider",Settings=W}

W=Kwargify({
Title="Slider",
Range={0,200},
Increment=1,
CurrentValue=100,
Callback=function(Z)

end,
},W or{})

local Z=false
local _=x.Template.Slider:Clone()
_.Name=W.Title.." - Slider"
_.Title.Text=W.Title
_.Visible=true
_.Parent=U

_.BackgroundTransparency=1
_.UIStroke.Transparency=1
_.Title.TextTransparency=1

d:Create(_,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundTransparency=0.5}):Play()
d:Create(_.UIStroke,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{Transparency=0.5}):Play()
d:Create(_.Title,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{TextTransparency=0}):Play()

_.Main.Progress.Size=UDim2.new(0,_.Main.AbsoluteSize.X*((W.CurrentValue+W.Range[1])/(W.Range[2]-W.Range[1]))>5 and _.Main.AbsoluteSize.X*(W.CurrentValue/(W.Range[2]-W.Range[1]))or 5,1,0)

_.Value.Text=tostring(W.CurrentValue)
Y.CurrentValue=_.Value.Text

W.Callback(W.CurrentValue)

_.MouseEnter:Connect(function()
tween(_.UIStroke,{Color=Color3.fromRGB(87,84,104)})
end)

_.MouseLeave:Connect(function()
tween(_.UIStroke,{Color=Color3.fromRGB(64,61,76)})
end)

_.Interact.InputBegan:Connect(function(aa)
if aa.UserInputType==Enum.UserInputType.MouseButton1 or aa.UserInputType==Enum.UserInputType.Touch then
Z=true
end
end)

_.Interact.InputEnded:Connect(function(aa)
if aa.UserInputType==Enum.UserInputType.MouseButton1 or aa.UserInputType==Enum.UserInputType.Touch then
Z=false
end
end)

_.Interact.MouseButton1Down:Connect(function()
local aa=_.Main.Progress.AbsolutePosition.X+_.Main.Progress.AbsoluteSize.X
local ab=aa
local ac
local ad;ad=f.Stepped:Connect(function()
if Z then
ac=c:GetMouseLocation().X
aa=aa+0.025*(ac-ab)

if ac<_.Main.AbsolutePosition.X then
ac=_.Main.AbsolutePosition.X
elseif ac>_.Main.AbsolutePosition.X+_.Main.AbsoluteSize.X then
ac=_.Main.AbsolutePosition.X+_.Main.AbsoluteSize.X
end

if aa<_.Main.AbsolutePosition.X+5 then
aa=_.Main.AbsolutePosition.X+5
elseif aa>_.Main.AbsolutePosition.X+_.Main.AbsoluteSize.X then
aa=_.Main.AbsolutePosition.X+_.Main.AbsoluteSize.X
end

if aa<=ac and(ac-ab)<0 then
ab=ac
elseif aa>=ac and(ac-ab)>0 then
ab=ac
end
_.Main.Progress.Size=UDim2.new(0,ac-_.Main.AbsolutePosition.X,1,0)
local ae=W.Range[1]+(ac-_.Main.AbsolutePosition.X)/_.Main.AbsoluteSize.X*(W.Range[2]-W.Range[1])

ae=math.floor(ae/W.Increment+0.5)*(W.Increment*10000000)/10000000

_.Value.Text=tostring(ae)

if W.CurrentValue~=ae then
local af,ag=pcall(function()
W.Callback(ae)
end)
if not af then
d:Create(_,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundTransparency=0}):Play()
d:Create(_,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundColor3=Color3.fromRGB(85,0,0)}):Play()
d:Create(_.UIStroke,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{Transparency=1}):Play()
_.Title.Text="Callback Error"
print("Luna Interface Suite | "..W.Title.." Callback Error "..tostring(ag))
wait(0.5)
_.Title.Text=W.Title
d:Create(_,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundTransparency=0.5}):Play()
d:Create(_,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundColor3=Color3.fromRGB(32,30,38)}):Play()
d:Create(_.UIStroke,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{Transparency=0.5}):Play()
end

W.CurrentValue=ae
Y.CurrentValue=W.CurrentValue

end
else
d:Create(_.Main.Progress,TweenInfo.new(0.1,Enum.EasingStyle.Back,Enum.EasingDirection.In,0,false),{Size=UDim2.new(0,ac-_.Main.AbsolutePosition.X>5 and ac-_.Main.AbsolutePosition.X or 5,1,0)}):Play()
ad:Disconnect()
end
end)
end)

local function Set(aa,ab)

aa=aa or W.CurrentValue

d:Create(_.Main.Progress,TweenInfo.new(0.3,Enum.EasingStyle.Back,Enum.EasingDirection.InOut),{Size=UDim2.new(0,_.Main.AbsoluteSize.X*((aa+W.Range[1])/(W.Range[2]-W.Range[1]))>5 and _.Main.AbsoluteSize.X*(aa/(W.Range[2]-W.Range[1]))or 5,1,0)}):Play()
if not ab then _.Value.Text=tostring(aa)end
local ac,ad=pcall(function()
W.Callback(aa)
end)
if not ac then
d:Create(_,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundTransparency=0}):Play()
d:Create(_,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundColor3=Color3.fromRGB(85,0,0)}):Play()
d:Create(_.UIStroke,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{Transparency=1}):Play()
_.Title.Text="Callback Error"
print("Luna Interface Suite | "..W.Title.." Callback Error "..tostring(ad))
wait(0.5)
_.Title.Text=W.Title
d:Create(_,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundTransparency=0.5}):Play()
d:Create(_,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundColor3=Color3.fromRGB(30,33,40)}):Play()
d:Create(_.UIStroke,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{Transparency=0.5}):Play()
end

W.CurrentValue=aa
Y.CurrentValue=W.CurrentValue


end

function Y.UpdateValue(aa,ab)
Set(tonumber(ab))
end

_.Value:GetPropertyChangedSignal"Text":Connect(function()
local aa=_.Value.Text
if not tonumber(aa)and aa~="."then
_.Value.Text=aa:match"[0-9.]*"or""
end
if W.Range[2]<(tonumber(_.Value.Text)or 0)then _.Value.Text=W.Range[2]end
_.Value.Size=UDim2.fromOffset(_.Value.TextBounds.X,23)
Set(tonumber(_.Value.Text),true)
end)

function Y.Set(aa,ab)
ab=Kwargify({
Name=W.Title,
Range=W.Range,
Increment=W.Increment,
CurrentValue=W.CurrentValue,
Callback=W.Callback
},ab or{})

W=ab
Y.Settings=ab

_.Name=W.Title.." - Slider"
_.Title.Text=W.Title

Set()


end

function Y.Destroy(aa)
_.Visible=false
_:Destroy()
end

if X then
b.Values[X]=Y
end

q.ThemeRemote:GetPropertyChangedSignal"Value":Connect(function()
_.Main.color.Color=b.ThemeGradient
_.Main.UIStroke.color.Color=b.ThemeGradient
end)

return Y

end


function S.AddToggle(aa,ab,ac)
U.Position=UDim2.new(0,0,0,28)
local ad={IgnoreConfig=false,Class="Toggle"}

ab=Kwargify({
Title="Toggle",
Description=nil,
Default=false,
Callback=function(ae)
end,
},ab or{})


local ae

if ab.Description~=nil and ab.Description~=""then
ae=x.Template.ToggleDesc:Clone()
else
ae=x.Template.Toggle:Clone()
end

ae.Visible=true
ae.Parent=U

ae.Name=ab.Title.." - Toggle"
ae.Title.Text=ab.Title
if ab.Description~=nil and ab.Description~=""then
ae.Desc.Text=ab.Description
end

ae.UIStroke.Transparency=1
ae.Title.TextTransparency=1
if ab.Description~=nil and ab.Description~=""then
ae.Desc.TextTransparency=1
end

d:Create(ae,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundTransparency=0.5}):Play()
if ab.Description~=nil and ab.Description~=""then
d:Create(ae.Desc,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{TextTransparency=0}):Play()
end
d:Create(ae.UIStroke,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{Transparency=0.5}):Play()
d:Create(ae.Title,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{TextTransparency=0}):Play()

local function Set(af)
if af then
ae.toggle.color.Enabled=true
tween(ae.toggle,{BackgroundTransparency=0})

ae.toggle.UIStroke.color.Enabled=true
tween(ae.toggle.UIStroke,{Color=Color3.new(255,255,255)})

tween(ae.toggle.val,{BackgroundColor3=Color3.fromRGB(255,255,255),Position=UDim2.new(1,-23,0.5,0),BackgroundTransparency=0.45})
else
ae.toggle.color.Enabled=false
ae.toggle.UIStroke.color.Enabled=false

ae.toggle.UIStroke.Color=Color3.fromRGB(97,97,97)

tween(ae.toggle,{BackgroundTransparency=1})

tween(ae.toggle.val,{BackgroundColor3=Color3.fromRGB(97,97,97),Position=UDim2.new(0,5,0.5,0),BackgroundTransparency=0})
end

ad.CurrentValue=af
end

ae.Interact.MouseButton1Click:Connect(function()
ab.Default=not ab.Default
Set(ab.Default)

local af,ag=pcall(function()
ab.Callback(ab.Default)
end)
if not af then
d:Create(ae,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundTransparency=0}):Play()
d:Create(ae,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundColor3=Color3.fromRGB(85,0,0)}):Play()
d:Create(ae.UIStroke,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{Transparency=1}):Play()
ae.Title.Text="Callback Error"
print("Luna Interface Suite | "..ab.Title.." Callback Error "..tostring(ag))
wait(0.5)
ae.Title.Text=ab.Title
d:Create(ae,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundTransparency=0.5}):Play()
d:Create(ae,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundColor3=Color3.fromRGB(32,30,38)}):Play()
d:Create(ae.UIStroke,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{Transparency=0.5}):Play()
end
end)

ae.MouseEnter:Connect(function()
tween(ae.UIStroke,{Color=Color3.fromRGB(87,84,104)})
end)

ae.MouseLeave:Connect(function()
tween(ae.UIStroke,{Color=Color3.fromRGB(64,61,76)})
end)

if ab.Default then
Set(ab.Default)
local af,ag=pcall(function()
ab.Callback(ab.Default)
end)
if not af then
d:Create(ae,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundTransparency=0}):Play()
d:Create(ae,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundColor3=Color3.fromRGB(85,0,0)}):Play()
d:Create(ae.UIStroke,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{Transparency=1}):Play()
ae.Title.Text="Callback Error"
print("Luna Interface Suite | "..ab.Title.." Callback Error "..tostring(ag))
wait(0.5)
ae.Title.Text=ab.Title
d:Create(ae,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundTransparency=0.5}):Play()
d:Create(ae,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundColor3=Color3.fromRGB(32,30,38)}):Play()
d:Create(ae.UIStroke,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{Transparency=0.5}):Play()
end
end

function ad.UpdateState(af,ag)
ab.Default=ag
Set(ab.Default)
end

function ad.Set(af,ag)

ag=Kwargify({
Name=ab.Title,
Description=ab.Description,
CurrentValue=ab.Default,
Callback=ab.Callback
},ag or{})

ad.Settings=ag
ab=ag

ae.Name=ab.Title.." - Toggle"
ae.Title.Text=ab.Title
if ab.Description~=nil and ab.Description~=""and ae.Desc~=nil then
ae.Desc.Text=ab.Description
end

Set(ab.Default)

ad.CurrentValue=ab.Default

local V,W=pcall(function()
ab.Callback(ab.Default)
end)
if not V then
d:Create(ae,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundTransparency=0}):Play()
d:Create(ae,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundColor3=Color3.fromRGB(85,0,0)}):Play()
d:Create(ae.UIStroke,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{Transparency=0}):Play()
ae.Title.Text="Callback Error"
print("Luna Interface Suite | "..ab.Title.." Callback Error "..tostring(W))
wait(0.5)
ae.Title.Text=ab.Title
d:Create(ae,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundTransparency=0.5}):Play()
d:Create(ae,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundColor3=Color3.fromRGB(32,30,38)}):Play()
d:Create(ae.UIStroke,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{Transparency=0.5}):Play()
end
end

function ad.Destroy(af)
ae.Visible=false
ae:Destroy()
end

q.ThemeRemote:GetPropertyChangedSignal"Value":Connect(function()
ae.toggle.color.Color=b.ThemeGradient
ae.toggle.UIStroke.color.Color=b.ThemeGradient
end)

if ac then
b.Values[ac]=ad
end

return ad

end


function S.AddBind(aa,ab,ac)
U.Position=UDim2.new(0,0,0,28)
local ad={Class="Keybind",IgnoreConfig=false,Settings=ab,Active=false}

ab=Kwargify({
Title="Bind",
Description=nil,
CurrentBind="Q",
HoldToInteract=false,
Callback=function(ae)


end,

OnChangedCallback=function(ae)


end,
},ab or{})

local ae=false

local af
if ab.Description~=nil and ab.Description~=""then
af=x.Template.BindDesc:Clone()
else
af=x.Template.Bind:Clone()
end

af.Visible=true
af.Parent=U

af.Name=ab.Title
af.Title.Text=ab.Title
if ab.Description~=nil and ab.Description~=""then
af.Desc.Text=ab.Description
end

af.Title.TextTransparency=1
if ab.Description~=nil and ab.Description~=""then
af.Desc.TextTransparency=1
end
af.BindFrame.BackgroundTransparency=1
af.BindFrame.UIStroke.Transparency=1
af.BindFrame.BindBox.TextTransparency=1

d:Create(af,TweenInfo.new(0.3,Enum.EasingStyle.Exponential),{BackgroundTransparency=0.5}):Play()
d:Create(af.Title,TweenInfo.new(0.3,Enum.EasingStyle.Exponential),{TextTransparency=0}):Play()
if ab.Description~=nil and ab.Description~=""then
d:Create(af.Desc,TweenInfo.new(0.3,Enum.EasingStyle.Exponential),{TextTransparency=0}):Play()
end
d:Create(af.BindFrame,TweenInfo.new(0.3,Enum.EasingStyle.Exponential),{BackgroundTransparency=0.9}):Play()
d:Create(af.BindFrame.UIStroke,TweenInfo.new(0.3,Enum.EasingStyle.Exponential),{Transparency=0.3}):Play()
d:Create(af.BindFrame.BindBox,TweenInfo.new(0.3,Enum.EasingStyle.Exponential),{TextTransparency=0}):Play()


af.BindFrame.BindBox.Text=ab.CurrentBind
af.BindFrame.BindBox.Size=UDim2.new(0,af.BindFrame.BindBox.TextBounds.X+20,0,42)

af.BindFrame.BindBox.Focused:Connect(function()
ae=true
af.BindFrame.BindBox.Text=""
end)

af.BindFrame.BindBox.FocusLost:Connect(function()
ae=false
if af.BindFrame.BindBox.Text==('')then
af.BindFrame.BindBox.Text=ab.CurrentBind
end
end)

af.MouseEnter:Connect(function()
tween(af.UIStroke,{Color=Color3.fromRGB(87,84,104)})
end)

af.MouseLeave:Connect(function()
tween(af.UIStroke,{Color=Color3.fromRGB(64,61,76)})
end)
c.InputBegan:Connect(function(ag,V)

if ae then
if ag.KeyCode~=Enum.KeyCode.Unknown and ag.KeyCode~=J.Bind then
local W=string.split(tostring(ag.KeyCode),".")
local X=W[3]
af.BindFrame.BindBox.Text=tostring(X)
ab.CurrentBind=tostring(X)
local Y,Z=pcall(function()
ab.Callback(ab.CurrentBind)
end)
if not Y then
d:Create(af,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundTransparency=0}):Play()
d:Create(af,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundColor3=Color3.fromRGB(85,0,0)}):Play()
d:Create(af.UIStroke,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{Transparency=1}):Play()
af.Title.Text="Callback Error"
print("Luna Interface Suite | "..ab.Title.." Callback Error "..tostring(Z))
wait(0.5)
af.Title.Text=ab.Title
d:Create(af,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundTransparency=0.5}):Play()
d:Create(af,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundColor3=Color3.fromRGB(32,30,38)}):Play()
d:Create(af.UIStroke,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{Transparency=0.5}):Play()
end
af.BindFrame.BindBox:ReleaseFocus()
end
elseif ab.CurrentBind~=nil and(ag.KeyCode==Enum.KeyCode[ab.CurrentBind]and not V)then
local W=true
local X
X=ag.Changed:Connect(function(Y)
if Y=="UserInputState"then
X:Disconnect()
W=false
end
end)

if not ab.HoldToInteract then
ad.Active=not ad.Active
local Y,Z=pcall(function()
ab.Callback(ad.Active)
end)
if not Y then
d:Create(af,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundTransparency=0}):Play()
d:Create(af,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundColor3=Color3.fromRGB(85,0,0)}):Play()
d:Create(af.UIStroke,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{Transparency=1}):Play()
af.Title.Text="Callback Error"
print("Luna Interface Suite | "..ab.Title.." Callback Error "..tostring(Z))
wait(0.5)
af.Title.Text=ab.Title
d:Create(af,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundTransparency=0.5}):Play()
d:Create(af,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundColor3=Color3.fromRGB(32,30,38)}):Play()
d:Create(af.UIStroke,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{Transparency=0.5}):Play()
end
else
wait(0.1)
if W then
local Y;Y=f.Stepped:Connect(function()
if not W then
local Z,_=pcall(function()
ab.Callback(false)
end)
if not Z then
d:Create(af,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundTransparency=0}):Play()
d:Create(af,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundColor3=Color3.fromRGB(85,0,0)}):Play()
d:Create(af.UIStroke,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{Transparency=1}):Play()
af.Title.Text="Callback Error"
print("Luna Interface Suite | "..ab.Title.." Callback Error "..tostring(_))
wait(0.5)
af.Title.Text=ab.Title
d:Create(af,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundTransparency=0.5}):Play()
d:Create(af,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundColor3=Color3.fromRGB(32,30,38)}):Play()
d:Create(af.UIStroke,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{Transparency=0.5}):Play()
end
Y:Disconnect()
else
local Z,_=pcall(function()
ab.Callback(true)
end)
if not Z then
d:Create(af,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundTransparency=0}):Play()
d:Create(af,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundColor3=Color3.fromRGB(85,0,0)}):Play()
d:Create(af.UIStroke,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{Transparency=1}):Play()
af.Title.Text="Callback Error"
print("Luna Interface Suite | "..ab.Title.." Callback Error "..tostring(_))
wait(0.5)
af.Title.Text=ab.Title
d:Create(af,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundTransparency=0.5}):Play()
d:Create(af,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundColor3=Color3.fromRGB(32,30,38)}):Play()
d:Create(af.UIStroke,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{Transparency=0.5}):Play()
end
end
end)
end
end
end
end)

af.BindFrame.BindBox:GetPropertyChangedSignal"Text":Connect(function()
d:Create(af.BindFrame,TweenInfo.new(0.55,Enum.EasingStyle.Exponential,Enum.EasingDirection.Out),{Size=UDim2.new(0,af.BindFrame.BindBox.TextBounds.X+20,0,30)}):Play()
end)

function ad.Set(ag,V)

V=Kwargify({
Name=ab.Title,
Description=ab.Description,
CurrentBind=ab.CurrentBind,
HoldToInteract=ab.HoldToInteract,
Callback=ab.Callback
},V or{})

ad.Settings=V
ab=V

af.Name=ab.Title
af.Title.Text=ab.Title
if ab.Description~=nil and ab.Description~=""and af.Desc~=nil then
af.Desc.Text=ab.Description
end

af.BindFrame.BindBox.Text=ab.CurrentBind
af.BindFrame.Size=UDim2.new(0,af.BindFrame.BindBox.TextBounds.X+20,0,42)


ad.CurrentBind=ab.CurrentBind
end

function ad.Destroy(ag)
af.Visible=false
af:Destroy()
end

if ac then
b.Values[ac]=ad
end



return ad

end


function S.AddInput(aa,ab,ac)
U.Position=UDim2.new(0,0,0,28)
local ad={IgnoreConfig=false,Class="Input",Settings=ab}

ab=Kwargify({
Title="Dynamic Input",
Description=nil,
CurrentValue="",
PlaceHolder="Input Here",
RemoveTextAfterFocusLost=false,
Numeric=false,
Enter=false,
MaxCharacters=nil,
Callback=function(ae)

end,
},ab or{})

ad.CurrentValue=ab.CurrentValue

local ae
if ab.Description~=nil and ab.Description~=""then
ae=true
end

local af
if ae then
af=x.Template.InputDesc:Clone()
else
af=x.Template.Input:Clone()
end

af.Name=ab.Title
af.Title.Text=ab.Title
if ae then af.Desc.Text=ab.Description end
af.Visible=true
af.Parent=U

af.BackgroundTransparency=1
af.UIStroke.Transparency=1
af.Title.TextTransparency=1
if ae then af.Desc.TextTransparency=1 end
af.InputFrame.BackgroundTransparency=1
af.InputFrame.UIStroke.Transparency=1
af.InputFrame.InputBox.TextTransparency=1

d:Create(af,TweenInfo.new(0.3,Enum.EasingStyle.Exponential),{BackgroundTransparency=0.5}):Play()
d:Create(af.UIStroke,TweenInfo.new(0.3,Enum.EasingStyle.Exponential),{Transparency=0.5}):Play()
d:Create(af.Title,TweenInfo.new(0.3,Enum.EasingStyle.Exponential),{TextTransparency=0}):Play()
if ae then d:Create(af.Desc,TweenInfo.new(0.3,Enum.EasingStyle.Exponential),{TextTransparency=0}):Play()end
d:Create(af.InputFrame,TweenInfo.new(0.3,Enum.EasingStyle.Exponential),{BackgroundTransparency=0.9}):Play()
d:Create(af.InputFrame.UIStroke,TweenInfo.new(0.3,Enum.EasingStyle.Exponential),{Transparency=0.3}):Play()
d:Create(af.InputFrame.InputBox,TweenInfo.new(0.3,Enum.EasingStyle.Exponential),{TextTransparency=0}):Play()

af.InputFrame.InputBox.PlaceholderText=ab.PlaceHolder
af.InputFrame.Size=UDim2.new(0,af.InputFrame.InputBox.TextBounds.X+52,0,30)

af.InputFrame.InputBox.FocusLost:Connect(function(ag)

if ab.Enter then
if ag then
local V,W=pcall(function()
ab.Callback(af.InputFrame.InputBox.Text)
ad.CurrentValue=af.InputFrame.InputBox.Text
end)
if not V then
d:Create(af,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundTransparency=0}):Play()
d:Create(af,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundColor3=Color3.fromRGB(85,0,0)}):Play()
d:Create(af.UIStroke,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{Transparency=1}):Play()
af.Title.Text="Callback Error"
print("Luna Interface Suite | "..ab.Title.." Callback Error "..tostring(W))
wait(0.5)
af.Title.Text=ab.Title
d:Create(af,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundTransparency=0.5}):Play()
d:Create(af,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundColor3=Color3.fromRGB(32,30,38)}):Play()
d:Create(af.UIStroke,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{Transparency=0.5}):Play()
end
end
end

if ab.RemoveTextAfterFocusLost then
af.InputFrame.InputBox.Text=""
end

end)

if ab.Numeric then
af.InputFrame.InputBox:GetPropertyChangedSignal"Text":Connect(function()
local ag=af.InputFrame.InputBox.Text
if not tonumber(ag)and ag~="."then
af.InputFrame.InputBox.Text=ag:match"[0-9.]*"or""
end
end)
end

af.InputFrame.InputBox:GetPropertyChangedSignal"Text":Connect(function()
if tonumber(ab.MaxCharacters)then
if(#af.InputFrame.InputBox.Text-1)==ab.MaxCharacters then
af.InputFrame.InputBox.Text=af.InputFrame.InputBox.Text:sub(1,ab.MaxCharacters)
end
end
d:Create(af.InputFrame,TweenInfo.new(0.55,Enum.EasingStyle.Exponential,Enum.EasingDirection.Out),{Size=UDim2.new(0,af.InputFrame.InputBox.TextBounds.X+52,0,30)}):Play()
if not ab.Enter then
local ag,V=pcall(function()
ab.Callback(af.InputFrame.InputBox.Text)
end)
if not ag then
d:Create(af,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundTransparency=0}):Play()
d:Create(af,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundColor3=Color3.fromRGB(85,0,0)}):Play()
d:Create(af.UIStroke,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{Transparency=1}):Play()
af.Title.Text="Callback Error"
print("Luna Interface Suite | "..ab.Title.." Callback Error "..tostring(V))
wait(0.5)
af.Title.Text=ab.Title
d:Create(af,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundTransparency=0.5}):Play()
d:Create(af,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundColor3=Color3.fromRGB(32,30,38)}):Play()
d:Create(af.UIStroke,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{Transparency=0.5}):Play()
end
end
ad.CurrentValue=af.InputFrame.InputBox.Text
end)

af.MouseEnter:Connect(function()
tween(af.UIStroke,{Color=Color3.fromRGB(87,84,104)})
end)

af.MouseLeave:Connect(function()
tween(af.UIStroke,{Color=Color3.fromRGB(64,61,76)})
end)


function ad.Set(ag,V)

V=Kwargify(ab,V or{})

ad.Settings=V
ab=V

af.Name=ab.Title
af.Title.Text=ab.Title
if ab.Description~=nil and ab.Description~=""and af.Desc~=nil then
af.Desc.Text=ab.Description
end

af.InputFrame.InputBox:CaptureFocus()
af.InputFrame.InputBox.Text=tostring(ab.CurrentValue)
af.InputFrame.InputBox:ReleaseFocus()
af.InputFrame.Size=UDim2.new(0,af.InputFrame.InputBox.TextBounds.X+52,0,42)

ad.CurrentValue=ab.CurrentValue
end

function ad.Destroy(ag)
af.Visible=false
af:Destroy()
end

if ac then
b.Values[ac]=ad
end


return ad

end


function S.AddDropdown(aa,ab,ac)
U.Position=UDim2.new(0,0,0,28)
local ad={IgnoreConfig=false,Class="Dropdown",Settings=ab}

ab=Kwargify({
Title="Dropdown",
Description=nil,
Values={"Option 1","Option 2"},
Default="Option 1",
Multi=false,
SpecialType=nil,
Callback=function(ae)


end,
},ab or{})
ad.Value=ab.Mutli and{ab.Default}or ab.Default
ad.Default=ab.Default
local ae=false
if ab.Description~=nil and ab.Description~=""then
ae=true
end
local af
local ag
if ae then
af=48
ag=180
elseif not ae then
af=38
ag=190
end
local V=false

local W
if ae then W=x.Template.DropdownDesc:Clone()else W=x.Template.Dropdown:Clone()end

W.List.Size=UDim2.new(1,-23,0,140)
W.OptionHolderBackground.Size=UDim2.new(1,-23,0,140)
W.Name=ab.Title
W.Title.Text=ab.Title
if ae then W.Desc.Text=ab.Description end

W.Parent=U
W.Visible=true

local function Toggle()
V=not V
if V then
tween(W.icon,{Rotation=180})
tween(W,{Size=UDim2.new(1,-25,0,ag)})
else
tween(W.icon,{Rotation=0})
tween(W,{Size=UDim2.new(1,-25,0,af)})
end
end

local function SafeCallback(X,Y)
local Z,_=pcall(function()
ab.Callback(X)
end)
if not Z then
d:Create(W,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundTransparency=0}):Play()
d:Create(W,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundColor3=Color3.fromRGB(85,0,0)}):Play()
d:Create(W.UIStroke,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{Transparency=1}):Play()
W.Title.Text="Callback Error"
print("Luna Interface Suite | "..ab.Title.." Callback Error "..tostring(_))
wait(0.5)
W.Title.Text=ab.Title
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

tween(W.List[X],{BackgroundTransparency=0.95,TextColor3=Color3.fromRGB(240,240,240)})
end

local function Refresh()
Clear()
for X,Y in pairs(ab.Values)do
local Z=W.List.Template:Clone()
local _=false
Z.Text=Y
if Y=="Template"then Y="Template (Name)"end
Z.Name=Y
Z.Interact.MouseButton1Click:Connect(function()
local ah
if ab.Multi then
if table.find(ad.Value,Y)then
RemoveTable(ad.Value,Y)
ad.Default=ad.Value
if not _ then
tween(Z,{TextColor3=Color3.fromRGB(200,200,200)})
end
tween(Z,{BackgroundTransparency=0.98})
else
table.insert(ad.Value,Y)
ad.Default=ad.Value
tween(Z,{TextColor3=Color3.fromRGB(240,240,240),BackgroundTransparency=0.95})
end
ah=ad.Value
else
ad.Value={Y}
ah=Y
ad.Default=ah
ActivateColorSingle(Y)
end

SafeCallback(ah,function()
if ab.Multi then
if ad.Value and type(ad.Value)=="table"then
if#ad.Value==1 then
W.Selected.PlaceholderText=ad.Value[1]
elseif#ad.Value==0 then
W.Selected.PlaceholderText="None"
else
W.Selected.PlaceholderText=unpackt(ad.Value)
end
else
ad.Value={}
W.Selected.PlaceholderText="None"
end
end
if not ab.Multi then
W.Selected.PlaceholderText=ad.Value[1]or"None"
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
for ah,X in pairs(ab.Values)do
table.remove(ab.Values,ah)
end

for ah,X in pairs(h:GetChildren())do
table.insert(ab.Values,X.Name)
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

if ab.SpecialType=="Player"then

for ah,X in pairs(ab.Values)do
table.remove(ab.Values,ah)
end
PlayerTableRefresh()
ad.Value=ab.Values[1]

h.PlayerAdded:Connect(function()PlayerTableRefresh()end)
h.PlayerRemoving:Connect(function()PlayerTableRefresh()end)

end

Refresh()

if ad.Value then
if type(ad.Value)=="string"then
ad.Value={ad.Value}
end
if not ab.Multi and type(ad.Value)=="table"then
ad.Value={ad.Value[1]}
end
else
ad.Value={}
end

local ah,X=0
for Y,Z in pairs(ad.Value)do
ah=ah+1
end
if ah==1 then X=ad.Value[1]else X=ad.Value end
SafeCallback(X)
if type(X)=="string"then
tween(W.List[X],{TextColor3=Color3.fromRGB(240,240,240),BackgroundTransparency=0.95})
else
for Y,Z in pairs(X)do
tween(W.List[Z],{TextColor3=Color3.fromRGB(240,240,240),BackgroundTransparency=0.95})
end
end

if ab.Multi then
if ad.Value and type(ad.Value)=="table"then
if#ad.Value==1 then
W.Selected.PlaceholderText=ad.Value[1]
elseif#ad.Value==0 then
W.Selected.PlaceholderText="None"
else
W.Selected.PlaceholderText=unpackt(ad.Value)
end
else
ad.Value={}
W.Selected.PlaceholderText="None"
end
for Y,Z in pairs(ad.Value)do
tween(W.List[Z],{TextColor3=Color3.fromRGB(227,227,227),BackgroundTransparency=0.95})
end
else
W.Selected.PlaceholderText=ad.Value[1]or"None"
end
W.Selected.Text=""

function ad.Set(Y,Z)
Z=Kwargify(ab,Z or{})

ad.Settings=Z
ab=Z

W.Name=ab.Title
W.Title.Text=ab.Title
if ab.Description~=nil and ab.Description~=""and W.Desc~=nil then
W.Desc.Text=ab.Description
end

if ab.SpecialType=="Player"then

for _,ai in pairs(ab.Values)do
table.remove(ab.Values,_)
end
PlayerTableRefresh()
ad.Value=ab.Values[1]
h.PlayerAdded:Connect(function()PlayerTableRefresh()end)
h.PlayerRemoving:Connect(function()PlayerTableRefresh()end)

end

Refresh()

if ad.Value then
if type(ad.Value)=="string"then
ad.Value={ad.Value}
end
if not ab.Multi and type(ad.Value)=="table"then
ad.Value={ad.Value[1]}
end
else
ad.Value={}
end

local ai,_=0
for aj,ak in pairs(ad.Value)do
ai=ai+1
end
if ai==1 then _=ad.Value[1]else _=ad.Value end
SafeCallback(_)
for aj,ak in pairs(W.List:GetChildren())do
if ak.ClassName=="TextLabel"then
tween(ak,{TextColor3=Color3.fromRGB(200,200,200),BackgroundTransparency=0.98})
end
end
tween(W.List[_],{TextColor3=Color3.fromRGB(240,240,240),BackgroundTransparency=0.95})

if ab.Multi then
if ad.Value and type(ad.Value)=="table"then
if#ad.Value==1 then
W.Selected.PlaceholderText=ad.Value[1]
elseif#ad.Value==0 then
W.Selected.PlaceholderText="None"
else
W.Selected.PlaceholderText=unpackt(ad.Value)
end
else
ad.Value={}
W.Selected.PlaceholderText="None"
end
for aj,ak in pairs(ad.Value)do
tween(W.List[ak],{TextColor3=Color3.fromRGB(227,227,227),BackgroundTransparency=0.95})
end
else
W.Selected.PlaceholderText=ad.Value[1]or"None"
end
W.Selected.Text=""



end

function ad.Destroy(ai)
W.Visible=false
W:Destroy()
end

if ac then
b.Values[ac]=ad
end



return ad

end


function S.AddColorPicker(aa,ab,ac)
U.Position=UDim2.new(0,0,0,28)
local ad={IgnoreClass=false,Class="Colorpicker",Settings=ab}

ab=Kwargify({
Title="Color Picker",
Color=Color3.fromRGB(255,255,255),
Callback=function(ae)


end
},ab or{})

local function Color3ToHex(ae)
return string.format("#%02X%02X%02X",math.floor(ae.R*255),math.floor(ae.G*255),math.floor(ae.B*255))
end

ad.Color=Color3ToHex(ab.Color)

local ae=UDim2.new(0,75,0,22)
local af=UDim2.new(0,219,0,129)

local ag=x.Template.ColorPicker:Clone()
local ah=ag.CPBackground
local ai=ah.Display
local aj=ah.MainCP
local ak=ag.ColorSlider

ag.Name=ab.Title
ag.Title.Text=ab.Title
ag.Visible=true
ag.Parent=U
ag.Size=UDim2.new(1.042,-25,0,38)
ah.Size=ae
ai.BackgroundTransparency=0

ag.MouseEnter:Connect(function()
tween(ag.UIStroke,{Color=Color3.fromRGB(87,84,104)})
end)
ag.MouseLeave:Connect(function()
tween(ag.UIStroke,{Color=Color3.fromRGB(64,61,76)})
end)

local function SafeCallback(V,W)
local X,Y=pcall(function()
ab.Callback(V)
end)
if not X then
d:Create(ag,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundTransparency=0}):Play()
d:Create(ag,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundColor3=Color3.fromRGB(85,0,0)}):Play()
d:Create(ag.UIStroke,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{Transparency=1}):Play()
ag.Title.Text="Callback Error"
print("Luna Interface Suite | "..ab.Title.." Callback Error "..tostring(Y))
wait(0.5)
ag.Title.Text=ab.Title
d:Create(ag,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundTransparency=0.5}):Play()
d:Create(ag,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundColor3=Color3.fromRGB(32,30,38)}):Play()
d:Create(ag.UIStroke,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{Transparency=0.5}):Play()
end
if X and W then
W()
end
end

local V=false

local W=game.Players.LocalPlayer:GetMouse()
aj.Image="http://www.roblox.com/asset/?id=11415645739"
local X=false
local Y=false
ag.Interact.MouseButton1Down:Connect(function()
if not V then
V=true
tween(ag,{Size=UDim2.new(1.042,-25,0,165)},nil,TweenInfo.new(0.6,Enum.EasingStyle.Exponential))
tween(ah,{Size=af})
tween(ai,{BackgroundTransparency=1})
else
V=false
tween(ag,{Size=UDim2.new(1.042,-25,0,38)},nil,TweenInfo.new(0.6,Enum.EasingStyle.Exponential))
tween(ah,{Size=ae})
tween(ai,{BackgroundTransparency=0})
end
end)
c.InputEnded:Connect(function(Z,_)if Z.UserInputType==Enum.UserInputType.MouseButton1 or Z.UserInputType==Enum.UserInputType.Touch then
X=false
Y=false
end end)
aj.MouseButton1Down:Connect(function()
if V then
X=true
end
end)
aj.MainPoint.MouseButton1Down:Connect(function()
if V then
X=true
end
end)
ak.MouseButton1Down:Connect(function()
Y=true
end)
ak.SliderPoint.MouseButton1Down:Connect(function()
Y=true
end)
local Z,_,al=ab.Color:ToHSV()
local am=Color3.fromHSV(Z,_,al)
local an,ao,ap=math.floor((Z*255)+0.5),math.floor((_*255)+0.5),math.floor((al*255)+0.5)
local aq=string.format("#%02X%02X%02X",am.R*0xFF,am.G*0xFF,am.B*0xFF)
ag.HexInput.InputBox.Text=aq
local function setDisplay(ar,as,at)

aj.MainPoint.Position=UDim2.new(_,-aj.MainPoint.AbsoluteSize.X/2,1-al,-aj.MainPoint.AbsoluteSize.Y/2)
aj.MainPoint.ImageColor3=Color3.fromHSV(ar,as,at)
ah.BackgroundColor3=Color3.fromHSV(ar,1,1)
ai.BackgroundColor3=Color3.fromHSV(ar,as,at)

local au=ar*ak.AbsoluteSize.X
ak.SliderPoint.Position=UDim2.new(0,au-ak.SliderPoint.AbsoluteSize.X/2,0.5,0)
ak.SliderPoint.ImageColor3=Color3.fromHSV(ar,1,1)
local av=Color3.fromHSV(ar,as,at)
local aw,ax,ay=math.floor((av.R*255)+0.5),math.floor((av.G*255)+0.5),math.floor((av.B*255)+0.5)
ag.RInput.InputBox.Text=tostring(aw)
ag.GInput.InputBox.Text=tostring(ax)
ag.BInput.InputBox.Text=tostring(ay)
aq=string.format("#%02X%02X%02X",av.R*0xFF,av.G*0xFF,av.B*0xFF)
ag.HexInput.InputBox.Text=aq
end
setDisplay(Z,_,al)
ag.HexInput.InputBox.FocusLost:Connect(function()
if not pcall(function()
local ar,as,at=string.match(ag.HexInput.InputBox.Text,"^#?(%w%w)(%w%w)(%w%w)$")
local au=Color3.fromRGB(tonumber(ar,16),tonumber(as,16),tonumber(at,16))
Z,_,al=au:ToHSV()
aq=ag.HexInput.InputBox.Text
setDisplay()
ab.Color=au
end)
then
ag.HexInput.InputBox.Text=aq
end
local ar,as,at=math.floor((Z*255)+0.5),math.floor((_*255)+0.5),math.floor((al*255)+0.5)
ab.Color=Color3.fromRGB(ar,as,at)
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
ab.Color=Color3.fromRGB(az,aA,aB)
end
ag.RInput.InputBox.FocusLost:connect(function()
rgbBoxes(ag.RInput.InputBox,"R")
SafeCallback(Color3.fromRGB(an,ao,ap))
end)
ag.GInput.InputBox.FocusLost:connect(function()
rgbBoxes(ag.GInput.InputBox,"G")
SafeCallback(Color3.fromRGB(an,ao,ap))
end)
ag.BInput.InputBox.FocusLost:connect(function()
rgbBoxes(ag.BInput.InputBox,"B")
SafeCallback(Color3.fromRGB(an,ao,ap))
end)
f.RenderStepped:connect(function()
if X then
local ar=math.clamp(W.X-aj.AbsolutePosition.X,0,aj.AbsoluteSize.X)
local as=math.clamp(W.Y-aj.AbsolutePosition.Y,0,aj.AbsoluteSize.Y)
aj.MainPoint.Position=UDim2.new(0,ar-aj.MainPoint.AbsoluteSize.X/2,0,as-aj.MainPoint.AbsoluteSize.Y/2)
_=ar/aj.AbsoluteSize.X
al=1-(as/aj.AbsoluteSize.Y)
ai.BackgroundColor3=Color3.fromHSV(Z,_,al)
aj.MainPoint.ImageColor3=Color3.fromHSV(Z,_,al)
ah.BackgroundColor3=Color3.fromHSV(Z,1,1)
local at=Color3.fromHSV(Z,_,al)
local au,av,aw=math.floor((at.R*255)+0.5),math.floor((at.G*255)+0.5),math.floor((at.B*255)+0.5)
ag.RInput.InputBox.Text=tostring(au)
ag.GInput.InputBox.Text=tostring(av)
ag.BInput.InputBox.Text=tostring(aw)
ag.HexInput.InputBox.Text=string.format("#%02X%02X%02X",at.R*0xFF,at.G*0xFF,at.B*0xFF)
SafeCallback(Color3.fromRGB(au,av,aw))
ab.Color=Color3.fromRGB(au,av,aw)
ad.Color=ab.Color
end
if Y then
local ar=math.clamp(W.X-ak.AbsolutePosition.X,0,ak.AbsoluteSize.X)
Z=ar/ak.AbsoluteSize.X
ai.BackgroundColor3=Color3.fromHSV(Z,_,al)
ak.SliderPoint.Position=UDim2.new(0,ar-ak.SliderPoint.AbsoluteSize.X/2,0.5,0)
ak.SliderPoint.ImageColor3=Color3.fromHSV(Z,1,1)
ah.BackgroundColor3=Color3.fromHSV(Z,1,1)
aj.MainPoint.ImageColor3=Color3.fromHSV(Z,_,al)
local as=Color3.fromHSV(Z,_,al)
local at,au,av=math.floor((as.R*255)+0.5),math.floor((as.G*255)+0.5),math.floor((as.B*255)+0.5)
ag.RInput.InputBox.Text=tostring(at)
ag.GInput.InputBox.Text=tostring(au)
ag.BInput.InputBox.Text=tostring(av)
ag.HexInput.InputBox.Text=string.format("#%02X%02X%02X",as.R*0xFF,as.G*0xFF,as.B*0xFF)
SafeCallback(Color3.fromRGB(at,au,av))
ab.Color=Color3.fromRGB(at,au,av)
ad.Color=ab.Color
end
end)

function ad.Set(ar,as)

as=Kwargify(ab,as or{})

ad.Settings=as
ab=as

ag.Name=ab.Title
ag.Title.Text=ab.Title
ag.Visible=true

local at,au,av=ab.Color:ToHSV()
local aw=Color3.fromHSV(at,au,av)
local ax,ay,az=math.floor((aw.R*255)+0.5),math.floor((aw.G*255)+0.5),math.floor((aw.B*255)+0.5)
local aA=string.format("#%02X%02X%02X",aw.R*0xFF,aw.G*0xFF,aw.B*0xFF)
ag.HexInput.InputBox.Text=aA
setDisplay(at,au,av)
SafeCallback(Color3.fromRGB(ax,ay,az))

ad.Color=ab.Color
end

function ad.Destroy(ar)
ag:Destroy()
end

if ac then
b.Values[ac]=ad
end

SafeCallback(ab.Color)

return ad
end

return S

end


function N.AddDivider(aa)
local ab=x.Template.Divider:Clone()
ab.Parent=P
ab.Line.BackgroundTransparency=1
tween(ab.Line,{BackgroundTransparency=0})
end


function N.AddButton(aa,ab)

ab=Kwargify({
Title="Button",
Description=nil,
Callback=function()

end,
},ab or{})

local ac={
Hover=false,
Settings=ab
}


local ad
if ab.Description==nil and ab.Description~=""then
ad=x.Template.Button:Clone()
else
ad=x.Template.ButtonDesc:Clone()
end
ad.Name=ab.Title
ad.Title.Text=ab.Title
if ab.Description~=nil and ab.Description~=""then
ad.Desc.Text=ab.Description
end
ad.Visible=true
ad.Parent=P

ad.UIStroke.Transparency=1
ad.Title.TextTransparency=1
if ab.Description~=nil and ab.Description~=""then
ad.Desc.TextTransparency=1
end

d:Create(ad,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundTransparency=0.5}):Play()
d:Create(ad.UIStroke,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{Transparency=0.5}):Play()
d:Create(ad.Title,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{TextTransparency=0}):Play()
if ab.Description~=nil and ab.Description~=""then
d:Create(ad.Desc,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{TextTransparency=0}):Play()
end

ad.Interact.MouseButton1Click:Connect(function()
local ae,af=pcall(ab.Callback)

if not ae then
d:Create(ad,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundTransparency=0}):Play()
d:Create(ad,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundColor3=Color3.fromRGB(85,0,0)}):Play()
d:Create(ad.UIStroke,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{Transparency=1}):Play()
ad.Title.Text="Callback Error"
print("Luna Interface Suite | "..ab.Title.." Callback Error "..tostring(af))
wait(0.5)
ad.Title.Text=ab.Title
d:Create(ad,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundTransparency=0.5}):Play()
d:Create(ad,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundColor3=Color3.fromRGB(32,30,38)}):Play()
d:Create(ad.UIStroke,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{Transparency=0.5}):Play()
else
tween(ad.UIStroke,{Color=Color3.fromRGB(136,131,163)})
wait(0.2)
if ac.Hover then
tween(ad.UIStroke,{Color=Color3.fromRGB(87,84,104)})
else
tween(ad.UIStroke,{Color=Color3.fromRGB(64,61,76)})
end
end
end)

ad.MouseEnter:Connect(function()
ac.Hover=true
tween(ad.UIStroke,{Color=Color3.fromRGB(87,84,104)})
end)

ad.MouseLeave:Connect(function()
ac.Hover=false
tween(ad.UIStroke,{Color=Color3.fromRGB(64,61,76)})
end)

function ac.Set(ae,af)
af=Kwargify({
Name=ab.Title,
Description=ab.Description,
Callback=ab.Callback
},af or{})

ab=af
ac.Settings=af

ad.Name=ab.Title
ad.Title.Text=ab.Title
if ab.Description~=nil and ab.Description~=""and ad.Desc~=nil then
ad.Desc.Text=ab.Description
end
end

function ac.Destroy(ae)
ad.Visible=false
ad:Destroy()
end

return ac
end


function N.AddLabel(aa,ab)

local ac={}

ab=Kwargify({
Title="Label",
Style=1
},ab or{})

ac.Settings=ab

local ad
if ab.Style==1 then
ad=x.Template.Label:Clone()
elseif ab.Style==2 then
ad=x.Template.Info:Clone()
elseif ab.Style==3 then
ad=x.Template.Warn:Clone()
end

ad.Text.Text=ab.Title
ad.Visible=true
ad.Parent=P

ad.BackgroundTransparency=1
ad.UIStroke.Transparency=1
ad.Text.TextTransparency=1

if ab.Style~=1 then
d:Create(ad,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundTransparency=0.8}):Play()
else
d:Create(ad,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundTransparency=1}):Play()
end
d:Create(ad.UIStroke,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{Transparency=0.5}):Play()
d:Create(ad.Text,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{TextTransparency=0}):Play()

function ac.Set(ae,af)
ab.Title=af
ac.Settings=ab
ad.Text.Text=af
end

function ac.Destroy(ae)
ad.Visible=false
ad:Destroy()
end

return ac
end


function N.AddParagraph(aa,ab)

ab=Kwargify({
Title="Paragraph",
Content=""
},ab or{})

local ac={
Settings=ab
}

local ad=x.Template.Paragraph:Clone()
ad.Title.Text=ab.Title
ad.Text.Text=ab.Content
ad.Visible=true
ad.Parent=P

ad.BackgroundTransparency=1
ad.UIStroke.Transparency=1
ad.Title.TextTransparency=1
ad.Text.TextTransparency=1

d:Create(ad,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundTransparency=1}):Play()
d:Create(ad.UIStroke,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{Transparency=0.5}):Play()
d:Create(ad.Title,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{TextTransparency=0}):Play()
d:Create(ad.Text,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{TextTransparency=0}):Play()

function ac.Update(ae)
ad.Text.Size=UDim2.new(ad.Text.Size.X.Scale,ad.Text.Size.X.Offset,0,math.huge)
ad.Text.Size=UDim2.new(ad.Text.Size.X.Scale,ad.Text.Size.X.Offset,0,ad.Text.TextBounds.Y)
tween(ad,{Size=UDim2.new(ad.Size.X.Scale,ad.Size.X.Offset,0,ad.Text.TextBounds.Y+40)})
end

function ac.Set(ae,af)

af=Kwargify({
Title=ab.Title,
Text=ab.Content
},af or{})

ac.Settings=af

ad.Title.Text=af.Title
ad.Text.Text=af.Content

ac:Update()

end

function ac.Destroy(ae)
ad.Visible=false
ad:Destroy()
end

ac:Update()

return ac
end


function N.AddSlider(aa,ab,ac)
local ad={IgnoreConfig=false,Class="Slider",Settings=ab}

ab=Kwargify({
Title="Slider",
Range={0,200},
Increment=1,
CurrentValue=100,
Callback=function(ae)

end,
},ab or{})

local ae=false
local af=x.Template.Slider:Clone()
af.Name=ab.Title.." - Slider"
af.Title.Text=ab.Title
af.Visible=true
af.Parent=P

af.BackgroundTransparency=1
af.UIStroke.Transparency=1
af.Title.TextTransparency=1

d:Create(af,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundTransparency=0.5}):Play()
d:Create(af.UIStroke,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{Transparency=0.5}):Play()
d:Create(af.Title,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{TextTransparency=0}):Play()

af.Main.Progress.Size=UDim2.new(0,af.Main.AbsoluteSize.X*((ab.CurrentValue+ab.Range[1])/(ab.Range[2]-ab.Range[1]))>5 and af.Main.AbsoluteSize.X*(ab.CurrentValue/(ab.Range[2]-ab.Range[1]))or 5,1,0)

af.Value.Text=tostring(ab.CurrentValue)
ad.CurrentValue=af.Value.Text

ab.Callback(ab.CurrentValue)

af.MouseEnter:Connect(function()
tween(af.UIStroke,{Color=Color3.fromRGB(87,84,104)})
end)

af.MouseLeave:Connect(function()
tween(af.UIStroke,{Color=Color3.fromRGB(64,61,76)})
end)

af.Interact.InputBegan:Connect(function(ag)
if ag.UserInputType==Enum.UserInputType.MouseButton1 or ag.UserInputType==Enum.UserInputType.Touch then
ae=true
end
end)

af.Interact.InputEnded:Connect(function(ag)
if ag.UserInputType==Enum.UserInputType.MouseButton1 or ag.UserInputType==Enum.UserInputType.Touch then
ae=false
end
end)

af.Interact.MouseButton1Down:Connect(function()
local ag=af.Main.Progress.AbsolutePosition.X+af.Main.Progress.AbsoluteSize.X
local ah=ag
local ai
local aj;aj=f.Stepped:Connect(function()
if ae then
ai=c:GetMouseLocation().X
ag=ag+0.025*(ai-ah)

if ai<af.Main.AbsolutePosition.X then
ai=af.Main.AbsolutePosition.X
elseif ai>af.Main.AbsolutePosition.X+af.Main.AbsoluteSize.X then
ai=af.Main.AbsolutePosition.X+af.Main.AbsoluteSize.X
end

if ag<af.Main.AbsolutePosition.X+5 then
ag=af.Main.AbsolutePosition.X+5
elseif ag>af.Main.AbsolutePosition.X+af.Main.AbsoluteSize.X then
ag=af.Main.AbsolutePosition.X+af.Main.AbsoluteSize.X
end

if ag<=ai and(ai-ah)<0 then
ah=ai
elseif ag>=ai and(ai-ah)>0 then
ah=ai
end
af.Main.Progress.Size=UDim2.new(0,ai-af.Main.AbsolutePosition.X,1,0)
local ak=ab.Range[1]+(ai-af.Main.AbsolutePosition.X)/af.Main.AbsoluteSize.X*(ab.Range[2]-ab.Range[1])

ak=math.floor(ak/ab.Increment+0.5)*(ab.Increment*10000000)/10000000

af.Value.Text=tostring(ak)

if ab.CurrentValue~=ak then
local al,am=pcall(function()
ab.Callback(ak)
end)
if not al then
d:Create(af,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundTransparency=0}):Play()
d:Create(af,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundColor3=Color3.fromRGB(85,0,0)}):Play()
d:Create(af.UIStroke,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{Transparency=1}):Play()
af.Title.Text="Callback Error"
print("Luna Interface Suite | "..ab.Title.." Callback Error "..tostring(am))
wait(0.5)
af.Title.Text=ab.Title
d:Create(af,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundTransparency=0.5}):Play()
d:Create(af,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundColor3=Color3.fromRGB(32,30,38)}):Play()
d:Create(af.UIStroke,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{Transparency=0.5}):Play()
end

ab.CurrentValue=ak
ad.CurrentValue=ab.CurrentValue

end
else
d:Create(af.Main.Progress,TweenInfo.new(0.1,Enum.EasingStyle.Back,Enum.EasingDirection.In,0,false),{Size=UDim2.new(0,ai-af.Main.AbsolutePosition.X>5 and ai-af.Main.AbsolutePosition.X or 5,1,0)}):Play()
aj:Disconnect()
end
end)
end)

local function Set(ag,ah)

ag=ag or ab.CurrentValue

d:Create(af.Main.Progress,TweenInfo.new(0.3,Enum.EasingStyle.Back,Enum.EasingDirection.InOut),{Size=UDim2.new(0,af.Main.AbsoluteSize.X*((ag+ab.Range[1])/(ab.Range[2]-ab.Range[1]))>5 and af.Main.AbsoluteSize.X*(ag/(ab.Range[2]-ab.Range[1]))or 5,1,0)}):Play()
if not ah then af.Value.Text=tostring(ag)end
local ai,aj=pcall(function()
ab.Callback(ag)
end)
if not ai then
d:Create(af,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundTransparency=0}):Play()
d:Create(af,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundColor3=Color3.fromRGB(85,0,0)}):Play()
d:Create(af.UIStroke,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{Transparency=1}):Play()
af.Title.Text="Callback Error"
print("Luna Interface Suite | "..ab.Title.." Callback Error "..tostring(aj))
wait(0.5)
af.Title.Text=ab.Title
d:Create(af,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundTransparency=0.5}):Play()
d:Create(af,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundColor3=Color3.fromRGB(30,33,40)}):Play()
d:Create(af.UIStroke,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{Transparency=0.5}):Play()
end

ab.CurrentValue=ag
ad.CurrentValue=ab.CurrentValue


end

function ad.UpdateValue(ag,ah)
Set(tonumber(ah))
end

af.Value:GetPropertyChangedSignal"Text":Connect(function()
local ag=af.Value.Text
if not tonumber(ag)and ag~="."then
af.Value.Text=ag:match"[0-9.]*"or""
end
if ab.Range[2]<(tonumber(af.Value.Text)or 0)then af.Value.Text=ab.Range[2]end
af.Value.Size=UDim2.fromOffset(af.Value.TextBounds.X,23)
Set(tonumber(af.Value.Text),true)
end)

function ad.Set(ag,ah)
ah=Kwargify({
Name=ab.Title,
Range=ab.Range,
Increment=ab.Increment,
CurrentValue=ab.CurrentValue,
Callback=ab.Callback
},ah or{})

ab=ah
ad.Settings=ah

af.Name=ab.Title.." - Slider"
af.Title.Text=ab.Title

Set()


end

function ad.Destroy(ag)
af.Visible=false
af:Destroy()
end

if ac then
b.Values[ac]=ad
end

q.ThemeRemote:GetPropertyChangedSignal"Value":Connect(function()
af.Main.color.Color=b.ThemeGradient
af.Main.UIStroke.color.Color=b.ThemeGradient
end)

return ad

end


function N.AddToggle(aa,ab,ac)
local ad={IgnoreConfig=false,Class="Toggle"}

ab=Kwargify({
Title="Toggle",
Description=nil,
Default=false,
Callback=function(ae)
end,
},ab or{})


local ae

if ab.Description~=nil and ab.Description~=""then
ae=x.Template.ToggleDesc:Clone()
else
ae=x.Template.Toggle:Clone()
end

ae.Visible=true
ae.Parent=P

ae.Name=ab.Title.." - Toggle"
ae.Title.Text=ab.Title
if ab.Description~=nil and ab.Description~=""then
ae.Desc.Text=ab.Description
end

ae.UIStroke.Transparency=1
ae.Title.TextTransparency=1
if ab.Description~=nil and ab.Description~=""then
ae.Desc.TextTransparency=1
end

d:Create(ae,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundTransparency=0.5}):Play()
if ab.Description~=nil and ab.Description~=""then
d:Create(ae.Desc,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{TextTransparency=0}):Play()
end
d:Create(ae.UIStroke,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{Transparency=0.5}):Play()
d:Create(ae.Title,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{TextTransparency=0}):Play()

local function Set(af)
if af then
ae.toggle.color.Enabled=true
tween(ae.toggle,{BackgroundTransparency=0})

ae.toggle.UIStroke.color.Enabled=true
tween(ae.toggle.UIStroke,{Color=Color3.new(255,255,255)})

tween(ae.toggle.val,{BackgroundColor3=Color3.fromRGB(255,255,255),Position=UDim2.new(1,-23,0.5,0),BackgroundTransparency=0.45})
else
ae.toggle.color.Enabled=false
ae.toggle.UIStroke.color.Enabled=false

ae.toggle.UIStroke.Color=Color3.fromRGB(97,97,97)

tween(ae.toggle,{BackgroundTransparency=1})

tween(ae.toggle.val,{BackgroundColor3=Color3.fromRGB(97,97,97),Position=UDim2.new(0,5,0.5,0),BackgroundTransparency=0})
end

ad.CurrentValue=af
end

ae.Interact.MouseButton1Click:Connect(function()
ab.Default=not ab.Default
Set(ab.Default)

local af,ag=pcall(function()
ab.Callback(ab.Default)
end)
if not af then
d:Create(ae,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundTransparency=0}):Play()
d:Create(ae,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundColor3=Color3.fromRGB(85,0,0)}):Play()
d:Create(ae.UIStroke,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{Transparency=1}):Play()
ae.Title.Text="Callback Error"
print("Luna Interface Suite | "..ab.Title.." Callback Error "..tostring(ag))
wait(0.5)
ae.Title.Text=ab.Title
d:Create(ae,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundTransparency=0.5}):Play()
d:Create(ae,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundColor3=Color3.fromRGB(32,30,38)}):Play()
d:Create(ae.UIStroke,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{Transparency=0.5}):Play()
end
end)

ae.MouseEnter:Connect(function()
tween(ae.UIStroke,{Color=Color3.fromRGB(87,84,104)})
end)

ae.MouseLeave:Connect(function()
tween(ae.UIStroke,{Color=Color3.fromRGB(64,61,76)})
end)

if ab.Default then
Set(ab.Default)
local af,ag=pcall(function()
ab.Callback(ab.Default)
end)
if not af then
d:Create(ae,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundTransparency=0}):Play()
d:Create(ae,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundColor3=Color3.fromRGB(85,0,0)}):Play()
d:Create(ae.UIStroke,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{Transparency=1}):Play()
ae.Title.Text="Callback Error"
print("Luna Interface Suite | "..ab.Title.." Callback Error "..tostring(ag))
wait(0.5)
ae.Title.Text=ab.Title
d:Create(ae,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundTransparency=0.5}):Play()
d:Create(ae,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundColor3=Color3.fromRGB(32,30,38)}):Play()
d:Create(ae.UIStroke,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{Transparency=0.5}):Play()
end
end

function ad.UpdateState(af,ag)
ab.Default=ag
Set(ab.Default)
end

function ad.Set(af,ag)

ag=Kwargify({
Name=ab.Title,
Description=ab.Description,
CurrentValue=ab.Default,
Callback=ab.Callback
},ag or{})

ad.Settings=ag
ab=ag

ae.Name=ab.Title.." - Toggle"
ae.Title.Text=ab.Title
if ab.Description~=nil and ab.Description~=""and ae.Desc~=nil then
ae.Desc.Text=ab.Description
end

Set(ab.Default)

ad.CurrentValue=ab.Default

local ah,ai=pcall(function()
ab.Callback(ab.Default)
end)
if not ah then
d:Create(ae,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundTransparency=0}):Play()
d:Create(ae,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundColor3=Color3.fromRGB(85,0,0)}):Play()
d:Create(ae.UIStroke,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{Transparency=0}):Play()
ae.Title.Text="Callback Error"
print("Luna Interface Suite | "..ab.Title.." Callback Error "..tostring(ai))
wait(0.5)
ae.Title.Text=ab.Title
d:Create(ae,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundTransparency=0.5}):Play()
d:Create(ae,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundColor3=Color3.fromRGB(32,30,38)}):Play()
d:Create(ae.UIStroke,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{Transparency=0.5}):Play()
end
end

function ad.Destroy(af)
ae.Visible=false
ae:Destroy()
end

q.ThemeRemote:GetPropertyChangedSignal"Value":Connect(function()
ae.toggle.color.Color=b.ThemeGradient
ae.toggle.UIStroke.color.Color=b.ThemeGradient
end)

if ac then
b.Values[ac]=ad
end

return ad

end


function N.AddBind(aa,ab,ac)
local ad={Class="Keybind",IgnoreConfig=false,Settings=ab,Active=false}

ab=Kwargify({
Title="Bind",
Description=nil,
CurrentBind="Q",
HoldToInteract=false,
Callback=function(ae)


end,

OnChangedCallback=function(ae)


end,
},ab or{})

local ae=false

local af
if ab.Description~=nil and ab.Description~=""then
af=x.Template.BindDesc:Clone()
else
af=x.Template.Bind:Clone()
end

af.Visible=true
af.Parent=P

af.Name=ab.Title
af.Title.Text=ab.Title
if ab.Description~=nil and ab.Description~=""then
af.Desc.Text=ab.Description
end

af.Title.TextTransparency=1
if ab.Description~=nil and ab.Description~=""then
af.Desc.TextTransparency=1
end
af.BindFrame.BackgroundTransparency=1
af.BindFrame.UIStroke.Transparency=1
af.BindFrame.BindBox.TextTransparency=1

d:Create(af,TweenInfo.new(0.3,Enum.EasingStyle.Exponential),{BackgroundTransparency=0.5}):Play()
d:Create(af.Title,TweenInfo.new(0.3,Enum.EasingStyle.Exponential),{TextTransparency=0}):Play()
if ab.Description~=nil and ab.Description~=""then
d:Create(af.Desc,TweenInfo.new(0.3,Enum.EasingStyle.Exponential),{TextTransparency=0}):Play()
end
d:Create(af.BindFrame,TweenInfo.new(0.3,Enum.EasingStyle.Exponential),{BackgroundTransparency=0.9}):Play()
d:Create(af.BindFrame.UIStroke,TweenInfo.new(0.3,Enum.EasingStyle.Exponential),{Transparency=0.3}):Play()
d:Create(af.BindFrame.BindBox,TweenInfo.new(0.3,Enum.EasingStyle.Exponential),{TextTransparency=0}):Play()


af.BindFrame.BindBox.Text=ab.CurrentBind
af.BindFrame.BindBox.Size=UDim2.new(0,af.BindFrame.BindBox.TextBounds.X+20,0,42)

af.BindFrame.BindBox.Focused:Connect(function()
ae=true
af.BindFrame.BindBox.Text=""
end)

af.BindFrame.BindBox.FocusLost:Connect(function()
ae=false
if af.BindFrame.BindBox.Text==('')then
af.BindFrame.BindBox.Text=ab.CurrentBind
end
end)

af.MouseEnter:Connect(function()
tween(af.UIStroke,{Color=Color3.fromRGB(87,84,104)})
end)

af.MouseLeave:Connect(function()
tween(af.UIStroke,{Color=Color3.fromRGB(64,61,76)})
end)
c.InputBegan:Connect(function(ag,ah)

if ae then
if ag.KeyCode~=Enum.KeyCode.Unknown and ag.KeyCode~=J.Bind then
local ai=string.split(tostring(ag.KeyCode),".")
local aj=ai[3]
af.BindFrame.BindBox.Text=tostring(aj)
ab.CurrentBind=tostring(aj)
local ak,al=pcall(function()
ab.Callback(ab.CurrentBind)
end)
if not ak then
d:Create(af,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundTransparency=0}):Play()
d:Create(af,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundColor3=Color3.fromRGB(85,0,0)}):Play()
d:Create(af.UIStroke,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{Transparency=1}):Play()
af.Title.Text="Callback Error"
print("Luna Interface Suite | "..ab.Title.." Callback Error "..tostring(al))
wait(0.5)
af.Title.Text=ab.Title
d:Create(af,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundTransparency=0.5}):Play()
d:Create(af,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundColor3=Color3.fromRGB(32,30,38)}):Play()
d:Create(af.UIStroke,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{Transparency=0.5}):Play()
end
af.BindFrame.BindBox:ReleaseFocus()
end
elseif ab.CurrentBind~=nil and(ag.KeyCode==Enum.KeyCode[ab.CurrentBind]and not ah)then
local ai=true
local aj
aj=ag.Changed:Connect(function(ak)
if ak=="UserInputState"then
aj:Disconnect()
ai=false
end
end)

if not ab.HoldToInteract then
ad.Active=not ad.Active
local ak,al=pcall(function()
ab.Callback(ad.Active)
end)
if not ak then
d:Create(af,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundTransparency=0}):Play()
d:Create(af,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundColor3=Color3.fromRGB(85,0,0)}):Play()
d:Create(af.UIStroke,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{Transparency=1}):Play()
af.Title.Text="Callback Error"
print("Luna Interface Suite | "..ab.Title.." Callback Error "..tostring(al))
wait(0.5)
af.Title.Text=ab.Title
d:Create(af,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundTransparency=0.5}):Play()
d:Create(af,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundColor3=Color3.fromRGB(32,30,38)}):Play()
d:Create(af.UIStroke,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{Transparency=0.5}):Play()
end
else
wait(0.1)
if ai then
local ak;ak=f.Stepped:Connect(function()
if not ai then
local al,am=pcall(function()
ab.Callback(false)
end)
if not al then
d:Create(af,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundTransparency=0}):Play()
d:Create(af,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundColor3=Color3.fromRGB(85,0,0)}):Play()
d:Create(af.UIStroke,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{Transparency=1}):Play()
af.Title.Text="Callback Error"
print("Luna Interface Suite | "..ab.Title.." Callback Error "..tostring(am))
wait(0.5)
af.Title.Text=ab.Title
d:Create(af,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundTransparency=0.5}):Play()
d:Create(af,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundColor3=Color3.fromRGB(32,30,38)}):Play()
d:Create(af.UIStroke,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{Transparency=0.5}):Play()
end
ak:Disconnect()
else
local al,am=pcall(function()
ab.Callback(true)
end)
if not al then
d:Create(af,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundTransparency=0}):Play()
d:Create(af,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundColor3=Color3.fromRGB(85,0,0)}):Play()
d:Create(af.UIStroke,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{Transparency=1}):Play()
af.Title.Text="Callback Error"
print("Luna Interface Suite | "..ab.Title.." Callback Error "..tostring(am))
wait(0.5)
af.Title.Text=ab.Title
d:Create(af,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundTransparency=0.5}):Play()
d:Create(af,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundColor3=Color3.fromRGB(32,30,38)}):Play()
d:Create(af.UIStroke,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{Transparency=0.5}):Play()
end
end
end)
end
end
end
end)

af.BindFrame.BindBox:GetPropertyChangedSignal"Text":Connect(function()
d:Create(af.BindFrame,TweenInfo.new(0.55,Enum.EasingStyle.Exponential,Enum.EasingDirection.Out),{Size=UDim2.new(0,af.BindFrame.BindBox.TextBounds.X+20,0,30)}):Play()
end)

function ad.Set(ag,ah)

ah=Kwargify({
Name=ab.Title,
Description=ab.Description,
CurrentBind=ab.CurrentBind,
HoldToInteract=ab.HoldToInteract,
Callback=ab.Callback
},ah or{})

ad.Settings=ah
ab=ah

af.Name=ab.Title
af.Title.Text=ab.Title
if ab.Description~=nil and ab.Description~=""and af.Desc~=nil then
af.Desc.Text=ab.Description
end

af.BindFrame.BindBox.Text=ab.CurrentBind
af.BindFrame.Size=UDim2.new(0,af.BindFrame.BindBox.TextBounds.X+20,0,42)


ad.CurrentBind=ab.CurrentBind
end

function ad.Destroy(ag)
af.Visible=false
af:Destroy()
end

if ac then
b.Values[ac]=ad
end



return ad

end

function N.AddKeybind(aa,ab)

ab=Kwargify({
Title="Bind",
Description=nil,
CurrentBind="Q",
HoldToInteract=false,
Callback=function(ac)


end
},ab or{})

local ac={Settings=ab,Active=false}
local ad=false

local ae
if ab.Description~=nil and ab.Description~=""then
ae=x.Template.BindDesc:Clone()
else
ae=x.Template.Bind:Clone()
end

ae.Visible=true
ae.Parent=P

ae.Name=ab.Title
ae.Title.Text=ab.Title
if ab.Description~=nil and ab.Description~=""then
ae.Desc.Text=ab.Description
end

ae.Title.TextTransparency=1
if ab.Description~=nil and ab.Description~=""then
ae.Desc.TextTransparency=1
end
ae.BindFrame.BackgroundTransparency=1
ae.BindFrame.UIStroke.Transparency=1
ae.BindFrame.BindBox.TextTransparency=1

d:Create(ae,TweenInfo.new(0.3,Enum.EasingStyle.Exponential),{BackgroundTransparency=0.5}):Play()
d:Create(ae.Title,TweenInfo.new(0.3,Enum.EasingStyle.Exponential),{TextTransparency=0}):Play()
if ab.Description~=nil and ab.Description~=""then
d:Create(ae.Desc,TweenInfo.new(0.3,Enum.EasingStyle.Exponential),{TextTransparency=0}):Play()
end
d:Create(ae.BindFrame,TweenInfo.new(0.3,Enum.EasingStyle.Exponential),{BackgroundTransparency=0.9}):Play()
d:Create(ae.BindFrame.UIStroke,TweenInfo.new(0.3,Enum.EasingStyle.Exponential),{Transparency=0.3}):Play()
d:Create(ae.BindFrame.BindBox,TweenInfo.new(0.3,Enum.EasingStyle.Exponential),{TextTransparency=0}):Play()


ae.BindFrame.BindBox.Text=ab.CurrentBind
ae.BindFrame.BindBox.Size=UDim2.new(0,ae.BindFrame.BindBox.TextBounds.X+16,0,42)

ae.BindFrame.BindBox.Focused:Connect(function()
ad=true
ae.BindFrame.BindBox.Text=""
end)

ae.BindFrame.BindBox.FocusLost:Connect(function()
ad=false
if ae.BindFrame.BindBox.Text==('')then
ae.BindFrame.BindBox.Text=ab.CurrentBind
end
end)

ae.MouseEnter:Connect(function()
tween(ae.UIStroke,{Color=Color3.fromRGB(87,84,104)})
end)

ae.MouseLeave:Connect(function()
tween(ae.UIStroke,{Color=Color3.fromRGB(64,61,76)})
end)
c.InputBegan:Connect(function(af,ag)

if ad then
if af.KeyCode~=Enum.KeyCode.Unknown and af.KeyCode~=Enum.KeyCode.K then
local ah=string.split(tostring(af.KeyCode),".")
local ai=ah[3]
ae.BindFrame.BindBox.Text=tostring(ai)
ab.CurrentBind=tostring(ai)
ae.BindFrame.BindBox:ReleaseFocus()
end
elseif ab.CurrentBind~=nil and(af.KeyCode==Enum.KeyCode[ab.CurrentBind]and not ag)then
local ah=true
local ai
ai=af.Changed:Connect(function(aj)
if aj=="UserInputState"then
ai:Disconnect()
ah=false
end
end)

if not ab.HoldToInteract then
ac.Active=not ac.Active
local aj,ak=pcall(function()
ab.Callback(ac.Active)
end)
if not aj then
d:Create(ae,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundTransparency=0}):Play()
d:Create(ae,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundColor3=Color3.fromRGB(85,0,0)}):Play()
d:Create(ae.UIStroke,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{Transparency=1}):Play()
ae.Title.Text="Callback Error"
print("Luna Interface Suite | "..ab.Title.." Callback Error "..tostring(ak))
wait(0.5)
ae.Title.Text=ab.Title
d:Create(ae,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundTransparency=0.5}):Play()
d:Create(ae,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundColor3=Color3.fromRGB(32,30,38)}):Play()
d:Create(ae.UIStroke,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{Transparency=0.5}):Play()
end
else
wait(0.1)
if ah then
local aj;aj=f.Stepped:Connect(function()
if not ah then
local ak,al=pcall(function()
ab.Callback(false)
end)
if not ak then
d:Create(ae,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundTransparency=0}):Play()
d:Create(ae,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundColor3=Color3.fromRGB(85,0,0)}):Play()
d:Create(ae.UIStroke,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{Transparency=1}):Play()
ae.Title.Text="Callback Error"
print("Luna Interface Suite | "..ab.Title.." Callback Error "..tostring(al))
wait(0.5)
ae.Title.Text=ab.Title
d:Create(ae,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundTransparency=0.5}):Play()
d:Create(ae,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundColor3=Color3.fromRGB(32,30,38)}):Play()
d:Create(ae.UIStroke,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{Transparency=0.5}):Play()
end
aj:Disconnect()
else
local ak,al=pcall(function()
ab.Callback(true)
end)
if not ak then
d:Create(ae,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundTransparency=0}):Play()
d:Create(ae,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundColor3=Color3.fromRGB(85,0,0)}):Play()
d:Create(ae.UIStroke,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{Transparency=1}):Play()
ae.Title.Text="Callback Error"
print("Luna Interface Suite | "..ab.Title.." Callback Error "..tostring(al))
wait(0.5)
ae.Title.Text=ab.Title
d:Create(ae,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundTransparency=0.5}):Play()
d:Create(ae,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundColor3=Color3.fromRGB(32,30,38)}):Play()
d:Create(ae.UIStroke,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{Transparency=0.5}):Play()
end
end
end)
end
end
end
end)

ae.BindFrame.BindBox:GetPropertyChangedSignal"Text":Connect(function()
d:Create(ae.BindFrame,TweenInfo.new(0.55,Enum.EasingStyle.Exponential,Enum.EasingDirection.Out),{Size=UDim2.new(0,ae.BindFrame.BindBox.TextBounds.X+16,0,30)}):Play()
end)

function ac.Set(af,ag)

ag=Kwargify({
Name=ab.Title,
Description=ab.Description,
CurrentBind=ab.CurrentBind,
HoldToInteract=ab.HoldToInteract,
Callback=ab.Callback
},ag or{})

ac.Settings=ag
ab=ag

ae.Name=ab.Title
ae.Title.Text=ab.Title
if ab.Description~=nil and ab.Description~=""and ae.Desc~=nil then
ae.Desc.Text=ab.Description
end

ae.BindFrame.BindBox.Text=ab.CurrentBind
ae.BindFrame.BindBox.Size=UDim2.new(0,ae.BindFrame.BindBox.TextBounds.X+16,0,42)



end

function ac.Destroy(af)
ae.Visible=false
ae:Destroy()
end



return ac

end


function N.AddInput(aa,ab,ac)
local ad={IgnoreConfig=false,Class="Input",Settings=ab}

ab=Kwargify({
Title="Dynamic Input",
Description=nil,
CurrentValue="",
PlaceHolder="Input Here",
RemoveTextAfterFocusLost=false,
Numeric=false,
Enter=false,
MaxCharacters=nil,
Callback=function(ae)

end,
},ab or{})

ad.CurrentValue=ab.CurrentValue

local ae
if ab.Description~=nil and ab.Description~=""then
ae=true
end

local af
if ae then
af=x.Template.InputDesc:Clone()
else
af=x.Template.Input:Clone()
end

af.Name=ab.Title
af.Title.Text=ab.Title
if ae then af.Desc.Text=ab.Description end
af.Visible=true
af.Parent=P

af.BackgroundTransparency=1
af.UIStroke.Transparency=1
af.Title.TextTransparency=1
if ae then af.Desc.TextTransparency=1 end
af.InputFrame.BackgroundTransparency=1
af.InputFrame.UIStroke.Transparency=1
af.InputFrame.InputBox.TextTransparency=1

d:Create(af,TweenInfo.new(0.3,Enum.EasingStyle.Exponential),{BackgroundTransparency=0.5}):Play()
d:Create(af.UIStroke,TweenInfo.new(0.3,Enum.EasingStyle.Exponential),{Transparency=0.5}):Play()
d:Create(af.Title,TweenInfo.new(0.3,Enum.EasingStyle.Exponential),{TextTransparency=0}):Play()
if ae then d:Create(af.Desc,TweenInfo.new(0.3,Enum.EasingStyle.Exponential),{TextTransparency=0}):Play()end
d:Create(af.InputFrame,TweenInfo.new(0.3,Enum.EasingStyle.Exponential),{BackgroundTransparency=0.9}):Play()
d:Create(af.InputFrame.UIStroke,TweenInfo.new(0.3,Enum.EasingStyle.Exponential),{Transparency=0.3}):Play()
d:Create(af.InputFrame.InputBox,TweenInfo.new(0.3,Enum.EasingStyle.Exponential),{TextTransparency=0}):Play()

af.InputFrame.InputBox.PlaceholderText=ab.PlaceHolder
af.InputFrame.Size=UDim2.new(0,af.InputFrame.InputBox.TextBounds.X+52,0,30)

af.InputFrame.InputBox.FocusLost:Connect(function(ag)

if ab.Enter then
if ag then
local ah,ai=pcall(function()
ab.Callback(af.InputFrame.InputBox.Text)
ad.CurrentValue=af.InputFrame.InputBox.Text
end)
if not ah then
d:Create(af,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundTransparency=0}):Play()
d:Create(af,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundColor3=Color3.fromRGB(85,0,0)}):Play()
d:Create(af.UIStroke,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{Transparency=1}):Play()
af.Title.Text="Callback Error"
print("Luna Interface Suite | "..ab.Title.." Callback Error "..tostring(ai))
wait(0.5)
af.Title.Text=ab.Title
d:Create(af,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundTransparency=0.5}):Play()
d:Create(af,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundColor3=Color3.fromRGB(32,30,38)}):Play()
d:Create(af.UIStroke,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{Transparency=0.5}):Play()
end
end
end

if ab.RemoveTextAfterFocusLost then
af.InputFrame.InputBox.Text=""
end

end)

if ab.Numeric then
af.InputFrame.InputBox:GetPropertyChangedSignal"Text":Connect(function()
local ag=af.InputFrame.InputBox.Text
if not tonumber(ag)and ag~="."then
af.InputFrame.InputBox.Text=ag:match"[0-9.]*"or""
end
end)
end

af.InputFrame.InputBox:GetPropertyChangedSignal"Text":Connect(function()
if tonumber(ab.MaxCharacters)then
if(#af.InputFrame.InputBox.Text-1)==ab.MaxCharacters then
af.InputFrame.InputBox.Text=af.InputFrame.InputBox.Text:sub(1,ab.MaxCharacters)
end
end
d:Create(af.InputFrame,TweenInfo.new(0.55,Enum.EasingStyle.Exponential,Enum.EasingDirection.Out),{Size=UDim2.new(0,af.InputFrame.InputBox.TextBounds.X+52,0,30)}):Play()
if not ab.Enter then
local ag,ah=pcall(function()
ab.Callback(af.InputFrame.InputBox.Text)
end)
if not ag then
d:Create(af,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundTransparency=0}):Play()
d:Create(af,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundColor3=Color3.fromRGB(85,0,0)}):Play()
d:Create(af.UIStroke,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{Transparency=1}):Play()
af.Title.Text="Callback Error"
print("Luna Interface Suite | "..ab.Title.." Callback Error "..tostring(ah))
wait(0.5)
af.Title.Text=ab.Title
d:Create(af,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundTransparency=0.5}):Play()
d:Create(af,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundColor3=Color3.fromRGB(32,30,38)}):Play()
d:Create(af.UIStroke,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{Transparency=0.5}):Play()
end
end
ad.CurrentValue=af.InputFrame.InputBox.Text
end)

af.MouseEnter:Connect(function()
tween(af.UIStroke,{Color=Color3.fromRGB(87,84,104)})
end)

af.MouseLeave:Connect(function()
tween(af.UIStroke,{Color=Color3.fromRGB(64,61,76)})
end)


function ad.Set(ag,ah)

ah=Kwargify(ab,ah or{})

ad.Settings=ah
ab=ah

af.Name=ab.Title
af.Title.Text=ab.Title
if ab.Description~=nil and ab.Description~=""and af.Desc~=nil then
af.Desc.Text=ab.Description
end

af.InputFrame.InputBox:CaptureFocus()
af.InputFrame.InputBox.Text=tostring(ab.CurrentValue)
af.InputFrame.InputBox:ReleaseFocus()
af.InputFrame.Size=UDim2.new(0,af.InputFrame.InputBox.TextBounds.X+52,0,42)

ad.CurrentValue=ab.CurrentValue
end

function ad.Destroy(ag)
af.Visible=false
af:Destroy()
end

if ac then
b.Values[ac]=ad
end


return ad

end


function N.AddDropdown(aa,ab,ac)
local ad={IgnoreConfig=false,Class="Dropdown",Settings=ab}

ab=Kwargify({
Title="Dropdown",
Description=nil,
Values={},
Default="",
Multi=false,
SpecialType=nil,
Callback=function(ae)


end,
},ab or{})

ad.Default=ad.Value
ad.Value=ab.Mutli and{ab.Default}or ab.Default
local ae=false
if ab.Description~=nil and ab.Description~=""then
ae=true
end
local af
local ag
if ae then
af=48
ag=190
elseif not ae then
af=38
ag=180
end
local ah=false

local ai
if ae then ai=x.Template.DropdownDesc:Clone()else ai=x.Template.Dropdown:Clone()end

ai.List.Size=UDim2.new(1,-23,0,130)
ai.OptionHolderBackground.Size=UDim2.new(1,-23,0,130)
ai.Name=ab.Title
ai.Title.Text=ab.Title
if ae then ai.Desc.Text=ab.Description end

ai.Parent=P
ai.Visible=true

local function Toggle()
ah=not ah
if ah then
tween(ai.icon,{Rotation=180})
tween(ai,{Size=UDim2.new(1,-25,0,ag)})
else
tween(ai.icon,{Rotation=0})
tween(ai,{Size=UDim2.new(1,-25,0,af)})
end
end

local function SafeCallback(aj,ak)
local al,am=pcall(function()
ab.Callback(aj)
end)
if not al then
d:Create(ai,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundTransparency=0}):Play()
d:Create(ai,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundColor3=Color3.fromRGB(85,0,0)}):Play()
d:Create(ai.UIStroke,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{Transparency=1}):Play()
ai.Title.Text="Callback Error"
print("Library Interface Suite | "..ab.Title.." Callback Error "..tostring(am))
wait(0.5)
ai.Title.Text=ab.Title
d:Create(ai,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundTransparency=0.5}):Play()
d:Create(ai,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundColor3=Color3.fromRGB(32,30,38)}):Play()
d:Create(ai.UIStroke,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{Transparency=0.5}):Play()
end
if al and ak then
ak()
end
end


ai.Selected:GetPropertyChangedSignal"Text":Connect(function()
local aj=ai.Selected.Text:lower()
for ak,al in ipairs(ai.List:GetChildren())do
if al:IsA"TextLabel"and al.Name~="Template"then
al.Visible=aj==""or string.find(al.Name:lower(),aj,1,true)~=nil
end
end
end)


local function Clear()
for aj,ak in ipairs(ai.List:GetChildren())do
if ak.ClassName=="TextLabel"and ak.Name~="Template"then
ak:Destroy()
end
end
end

local function ActivateColorSingle(aj)
for ak,al in pairs(ai.List:GetChildren())do
if al.ClassName=="TextLabel"and al.Name~="Template"then
tween(al,{BackgroundTransparency=0.98})
end
end

tween(ai.List[aj],{BackgroundTransparency=0.95,TextColor3=Color3.fromRGB(240,240,240)})
end

local function Refresh()
Clear()
for aj,ak in pairs(ab.Values)do
local al=ai.List.Template:Clone()
local am=false
al.Text=ak
if ak=="Template"then ak="Template (Name)"end
al.Name=ak
al.Interact.MouseButton1Click:Connect(function()
local an
if ab.Multi then
if table.find(ad.Value,ak)then
RemoveTable(ad.Value,ak)
ad.Default=ad.Value
if not am then
tween(al,{TextColor3=Color3.fromRGB(200,200,200)})
end
tween(al,{BackgroundTransparency=0.98})
else
table.insert(ad.Value,ak)
ad.Default=ad.Value
tween(al,{TextColor3=Color3.fromRGB(240,240,240),BackgroundTransparency=0.95})
end
an=ad.Value
else
ad.Value={ak}
an=ak
ad.Default=an
ActivateColorSingle(ak)
end

SafeCallback(an,function()
if ab.Multi then
if ad.Value and type(ad.Value)=="table"then
if#ad.Value==1 then
ai.Selected.PlaceholderText=ad.Value[1]
elseif#ad.Value==0 then
ai.Selected.PlaceholderText="None"
else
ai.Selected.PlaceholderText=unpackt(ad.Value)
end
else
ad.Value={}
ai.Selected.PlaceholderText="None"
end
end
if not ab.Multi then
ai.Selected.PlaceholderText=ad.Value[1]or"None"
end
ai.Selected.Text=""
end)
end)
al.Visible=true
al.Parent=ai.List
al.MouseEnter:Connect(function()
am=true
if al.BackgroundTransparency==0.95 then
return
else
tween(al,{TextColor3=Color3.fromRGB(240,240,240)})
end
end)
al.MouseLeave:Connect(function()
am=false
if al.BackgroundTransparency==0.95 then
return
else
tween(al,{TextColor3=Color3.fromRGB(200,200,200)})
end
end)
end
end

local function PlayerTableRefresh()
for aj,ak in pairs(ab.Values)do
table.remove(ab.Values,aj)
end

for aj,ak in pairs(h:GetChildren())do
table.insert(ab.Values,ak.Name)
end
end

ai.Interact.MouseButton1Click:Connect(function()
Toggle()
end)

ai.MouseEnter:Connect(function()
tween(ai.UIStroke,{Color=Color3.fromRGB(87,84,104)})
end)

ai.MouseLeave:Connect(function()
tween(ai.UIStroke,{Color=Color3.fromRGB(64,61,76)})
end)

if ab.SpecialType=="Player"then

for aj,ak in pairs(ab.Values)do
table.remove(ab.Values,aj)
end
PlayerTableRefresh()
ad.Value=ab.Values[1]

h.PlayerAdded:Connect(function()PlayerTableRefresh()end)
h.PlayerRemoving:Connect(function()PlayerTableRefresh()end)

end

Refresh()

if ad.Value then
if type(ad.Value)=="string"then
ad.Value={ad.Value}
end
if not ab.Multi and type(ad.Value)=="table"then
ad.Value={ad.Value[1]}
end
else
ad.Value={}
end

local aj,ak=0
for al,am in pairs(ad.Value)do
aj=aj+1
end
if aj==1 then ak=ad.Value[1]else ak=ad.Value end
SafeCallback(ak)
if type(ak)=="string"then
if ad.Value[1]~=""then
tween(ai.List[ak],{TextColor3=Color3.fromRGB(240,240,240),BackgroundTransparency=0.95})
end
else
for al,am in pairs(ak)do
tween(ai.List[am],{TextColor3=Color3.fromRGB(240,240,240),BackgroundTransparency=0.95})
end
end

if ab.Multi then
if ad.Value and type(ad.Value)=="table"then
if#ad.Value==1 then
ai.Selected.PlaceholderText=ad.Value[1]
elseif#ad.Value==0 then
ai.Selected.PlaceholderText="None"
else
ai.Selected.PlaceholderText=unpackt(ad.Value)
end
else
ad.Value={}
ai.Selected.PlaceholderText="None"
end
for al,am in pairs(ad.Value)do
tween(ai.List[am],{TextColor3=Color3.fromRGB(227,227,227),BackgroundTransparency=0.95})
end
else
ai.Selected.PlaceholderText=ad.Value[1]~=""and ad.Value[1]or"None"
end
ai.Selected.Text=""

function ad.Set(al,am)
am=Kwargify(ab,am or{})

ad.Settings=am
ab=am

ai.Name=ab.Title
ai.Title.Text=ab.Title
if ab.Description~=nil and ab.Description~=""and ai.Desc~=nil then
ai.Desc.Text=ab.Description
end

if ab.SpecialType=="Player"then

for an,ao in pairs(ab.Values)do
table.remove(ab.Values,an)
end
PlayerTableRefresh()
ad.Value=ab.Values[1]
h.PlayerAdded:Connect(function()PlayerTableRefresh()end)
h.PlayerRemoving:Connect(function()PlayerTableRefresh()end)

end

Refresh()

if ad.Value then
if type(ad.Value)=="string"then
ad.Value={ad.Value}
end
if not ab.Multi and type(ad.Value)=="table"then
ad.Value={ad.Value[1]}
end
else
ad.Value={}
end

local an,ao=0
for ap,aq in pairs(ad.Value)do
an=an+1
end
if an==1 then ao=ad.Value[1]else ao=ad.Value end
SafeCallback(ao)
for ap,aq in pairs(ai.List:GetChildren())do
if aq.ClassName=="TextLabel"then
tween(aq,{TextColor3=Color3.fromRGB(200,200,200),BackgroundTransparency=0.98})
end
end
tween(ai.List[ao],{TextColor3=Color3.fromRGB(240,240,240),BackgroundTransparency=0.95})

if ab.Multi then
if ad.Value and type(ad.Value)=="table"then
if#ad.Value==1 then
ai.Selected.PlaceholderText=ad.Value[1]
elseif#ad.Value==0 then
ai.Selected.PlaceholderText="None"
else
ai.Selected.PlaceholderText=unpackt(ad.Value)
end
else
ad.Value={}
ai.Selected.PlaceholderText="None"
end
for ap,aq in pairs(ad.Value)do
tween(ai.List[aq],{TextColor3=Color3.fromRGB(227,227,227),BackgroundTransparency=0.95})
end
else
ai.Selected.PlaceholderText=ad.Value[1]or"None"
end
ai.Selected.Text=""



end

function ad.Destroy(al)
ai.Visible=false
ai:Destroy()
end

if ac then
b.Values[ac]=ad
end



return ad

end


function N.AddColorPicker(aa,ab,ac)
local ad={IgnoreClass=false,Class="Colorpicker",Settings=ab}

ab=Kwargify({
Title="Color Picker",
Color=Color3.fromRGB(255,255,255),
Callback=function(ae)


end
},ab or{})

local function Color3ToHex(ae)
return string.format("#%02X%02X%02X",math.floor(ae.R*255),math.floor(ae.G*255),math.floor(ae.B*255))
end

ad.Color=Color3ToHex(ab.Color)

local ae=UDim2.new(0,75,0,22)
local af=UDim2.new(0,219,0,129)

local ag=x.Template.ColorPicker:Clone()
local ah=ag.CPBackground
local ai=ah.Display
local aj=ah.MainCP
local ak=ag.ColorSlider

ag.Name=ab.Title
ag.Title.Text=ab.Title
ag.Visible=true
ag.Parent=P
ag.Size=UDim2.new(1.042,-25,0,38)
ah.Size=ae
ai.BackgroundTransparency=0

ag.MouseEnter:Connect(function()
tween(ag.UIStroke,{Color=Color3.fromRGB(87,84,104)})
end)
ag.MouseLeave:Connect(function()
tween(ag.UIStroke,{Color=Color3.fromRGB(64,61,76)})
end)

local function SafeCallback(al,am)
local an,ao=pcall(function()
ab.Callback(al)
end)
if not an then
d:Create(ag,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundTransparency=0}):Play()
d:Create(ag,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundColor3=Color3.fromRGB(85,0,0)}):Play()
d:Create(ag.UIStroke,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{Transparency=1}):Play()
ag.Title.Text="Callback Error"
print("Luna Interface Suite | "..ab.Title.." Callback Error "..tostring(ao))
wait(0.5)
ag.Title.Text=ab.Title
d:Create(ag,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundTransparency=0.5}):Play()
d:Create(ag,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{BackgroundColor3=Color3.fromRGB(32,30,38)}):Play()
d:Create(ag.UIStroke,TweenInfo.new(0.7,Enum.EasingStyle.Exponential),{Transparency=0.5}):Play()
end
if an and am then
am()
end
end

local al=false

local am=game.Players.LocalPlayer:GetMouse()
aj.Image="http://www.roblox.com/asset/?id=11415645739"
local an=false
local ao=false
ag.Interact.MouseButton1Down:Connect(function()
if not al then
al=true
tween(ag,{Size=UDim2.new(1.042,-25,0,165)},nil,TweenInfo.new(0.6,Enum.EasingStyle.Exponential))
tween(ah,{Size=af})
tween(ai,{BackgroundTransparency=1})
else
al=false
tween(ag,{Size=UDim2.new(1.042,-25,0,38)},nil,TweenInfo.new(0.6,Enum.EasingStyle.Exponential))
tween(ah,{Size=ae})
tween(ai,{BackgroundTransparency=0})
end
end)
c.InputEnded:Connect(function(ap,aq)if ap.UserInputType==Enum.UserInputType.MouseButton1 or ap.UserInputType==Enum.UserInputType.Touch then
an=false
ao=false
end end)
aj.MouseButton1Down:Connect(function()
if al then
an=true
end
end)
aj.MainPoint.MouseButton1Down:Connect(function()
if al then
an=true
end
end)
ak.MouseButton1Down:Connect(function()
ao=true
end)
ak.SliderPoint.MouseButton1Down:Connect(function()
ao=true
end)
local ap,aq,ar=ab.Color:ToHSV()
local as=Color3.fromHSV(ap,aq,ar)
local at,au,av=math.floor((ap*255)+0.5),math.floor((aq*255)+0.5),math.floor((ar*255)+0.5)
local aw=string.format("#%02X%02X%02X",as.R*0xFF,as.G*0xFF,as.B*0xFF)
ag.HexInput.InputBox.Text=aw
local function setDisplay(ax,ay,az)

aj.MainPoint.Position=UDim2.new(aq,-aj.MainPoint.AbsoluteSize.X/2,1-ar,-aj.MainPoint.AbsoluteSize.Y/2)
aj.MainPoint.ImageColor3=Color3.fromHSV(ax,ay,az)
ah.BackgroundColor3=Color3.fromHSV(ax,1,1)
ai.BackgroundColor3=Color3.fromHSV(ax,ay,az)

local aA=ax*ak.AbsoluteSize.X
ak.SliderPoint.Position=UDim2.new(0,aA-ak.SliderPoint.AbsoluteSize.X/2,0.5,0)
ak.SliderPoint.ImageColor3=Color3.fromHSV(ax,1,1)
local aB=Color3.fromHSV(ax,ay,az)
local Q,R,S=math.floor((aB.R*255)+0.5),math.floor((aB.G*255)+0.5),math.floor((aB.B*255)+0.5)
ag.RInput.InputBox.Text=tostring(Q)
ag.GInput.InputBox.Text=tostring(R)
ag.BInput.InputBox.Text=tostring(S)
aw=string.format("#%02X%02X%02X",aB.R*0xFF,aB.G*0xFF,aB.B*0xFF)
ag.HexInput.InputBox.Text=aw
end
setDisplay(ap,aq,ar)
ag.HexInput.InputBox.FocusLost:Connect(function()
if not pcall(function()
local ax,ay,az=string.match(ag.HexInput.InputBox.Text,"^#?(%w%w)(%w%w)(%w%w)$")
local aA=Color3.fromRGB(tonumber(ax,16),tonumber(ay,16),tonumber(az,16))
ap,aq,ar=aA:ToHSV()
aw=ag.HexInput.InputBox.Text
setDisplay()
ab.Color=aA
end)
then
ag.HexInput.InputBox.Text=aw
end
local ax,ay,az=math.floor((ap*255)+0.5),math.floor((aq*255)+0.5),math.floor((ar*255)+0.5)
ab.Color=Color3.fromRGB(ax,ay,az)
SafeCallback(Color3.fromRGB(ax,ay,az))
end)

local function rgbBoxes(ax,ay)
local az=tonumber(ax.Text)
local aA=Color3.fromHSV(ap,aq,ar)
local aB,Q,R=math.floor((aA.R*255)+0.5),math.floor((aA.G*255)+0.5),math.floor((aA.B*255)+0.5)
local S
if ay=="R"then S=aB;aB=az elseif ay=="G"then S=Q;Q=az else S=R;R=az end
if az then
az=math.clamp(az,0,255)
ap,aq,ar=Color3.fromRGB(aB,Q,R):ToHSV()
setDisplay()
else
ax.Text=tostring(S)
end
local T,U,V=math.floor((aA.R*255)+0.5),math.floor((aA.G*255)+0.5),math.floor((aA.B*255)+0.5)
ab.Color=Color3.fromRGB(T,U,V)
end
ag.RInput.InputBox.FocusLost:connect(function()
rgbBoxes(ag.RInput.InputBox,"R")
SafeCallback(Color3.fromRGB(at,au,av))
end)
ag.GInput.InputBox.FocusLost:connect(function()
rgbBoxes(ag.GInput.InputBox,"G")
SafeCallback(Color3.fromRGB(at,au,av))
end)
ag.BInput.InputBox.FocusLost:connect(function()
rgbBoxes(ag.BInput.InputBox,"B")
SafeCallback(Color3.fromRGB(at,au,av))
end)
f.RenderStepped:connect(function()
if an then
local ax=math.clamp(am.X-aj.AbsolutePosition.X,0,aj.AbsoluteSize.X)
local ay=math.clamp(am.Y-aj.AbsolutePosition.Y,0,aj.AbsoluteSize.Y)
aj.MainPoint.Position=UDim2.new(0,ax-aj.MainPoint.AbsoluteSize.X/2,0,ay-aj.MainPoint.AbsoluteSize.Y/2)
aq=ax/aj.AbsoluteSize.X
ar=1-(ay/aj.AbsoluteSize.Y)
ai.BackgroundColor3=Color3.fromHSV(ap,aq,ar)
aj.MainPoint.ImageColor3=Color3.fromHSV(ap,aq,ar)
ah.BackgroundColor3=Color3.fromHSV(ap,1,1)
local az=Color3.fromHSV(ap,aq,ar)
local aA,aB,Q=math.floor((az.R*255)+0.5),math.floor((az.G*255)+0.5),math.floor((az.B*255)+0.5)
ag.RInput.InputBox.Text=tostring(aA)
ag.GInput.InputBox.Text=tostring(aB)
ag.BInput.InputBox.Text=tostring(Q)
ag.HexInput.InputBox.Text=string.format("#%02X%02X%02X",az.R*0xFF,az.G*0xFF,az.B*0xFF)
SafeCallback(Color3.fromRGB(aA,aB,Q))
ab.Color=Color3.fromRGB(aA,aB,Q)
ad.Color=ab.Color
end
if ao then
local ax=math.clamp(am.X-ak.AbsolutePosition.X,0,ak.AbsoluteSize.X)
ap=ax/ak.AbsoluteSize.X
ai.BackgroundColor3=Color3.fromHSV(ap,aq,ar)
ak.SliderPoint.Position=UDim2.new(0,ax-ak.SliderPoint.AbsoluteSize.X/2,0.5,0)
ak.SliderPoint.ImageColor3=Color3.fromHSV(ap,1,1)
ah.BackgroundColor3=Color3.fromHSV(ap,1,1)
aj.MainPoint.ImageColor3=Color3.fromHSV(ap,aq,ar)
local ay=Color3.fromHSV(ap,aq,ar)
local az,aA,aB=math.floor((ay.R*255)+0.5),math.floor((ay.G*255)+0.5),math.floor((ay.B*255)+0.5)
ag.RInput.InputBox.Text=tostring(az)
ag.GInput.InputBox.Text=tostring(aA)
ag.BInput.InputBox.Text=tostring(aB)
ag.HexInput.InputBox.Text=string.format("#%02X%02X%02X",ay.R*0xFF,ay.G*0xFF,ay.B*0xFF)
SafeCallback(Color3.fromRGB(az,aA,aB))
ab.Color=Color3.fromRGB(az,aA,aB)
ad.Color=ab.Color
end
end)

function ad.Set(ax,ay)

ay=Kwargify(ab,ay or{})

ad.Settings=ay
ab=ay

ag.Name=ab.Title
ag.Title.Text=ab.Title
ag.Visible=true

local az,aA,aB=ab.Color:ToHSV()
local Q=Color3.fromHSV(az,aA,aB)
local R,S,T=math.floor((Q.R*255)+0.5),math.floor((Q.G*255)+0.5),math.floor((Q.B*255)+0.5)
local U=string.format("#%02X%02X%02X",Q.R*0xFF,Q.G*0xFF,Q.B*0xFF)
ag.HexInput.InputBox.Text=U
setDisplay(az,aA,aB)
SafeCallback(Color3.fromRGB(R,S,T))

ad.Color=ab.Color
end

function ad.Destroy(ax)
ag:Destroy()
end

if ac then
b.Values[ac]=ad
end

SafeCallback(ab.Color)

return ad
end


function N.BuildConfigSection(aa)
if l then
N:AddLabel{Text="Config system unavailable. (Environment isStudio)",Style=3}
return"Config system unavailable."
end

local ab
local ac

local ad=x.Template.Title:Clone()
ad.Text="Configurations"
ad.Visible=true
ad.Parent=P
ad.TextTransparency=1
d:Create(ad,TweenInfo.new(0.4,Enum.EasingStyle.Exponential,Enum.EasingDirection.Out),{TextTransparency=0}):Play()

N:AddSection"Config Creator"

N:AddInput{
Title="Config Name",
Description="Insert a name for your to be created config.",
PlaceholderText="Name",
CurrentValue="",
Numeric=false,
MaxCharacters=nil,
Enter=false,
Callback=function(ae)
ab=ae
end,
}

local ae

N:AddButton{
Title="Create Config",
Description="Create a config with all of your current settings.",
Callback=function()
if not ab or string.gsub(ab," ","")==""then
b:NewNotify{
Title="Interface",
Icon="warning",
ImageSource="Material",
Content="Config name cannot be empty."
}
return
end

local af,ag=b:SaveConfig(ab)
if not af then
b:NewNotify{
Title="Interface",
Icon="error",
ImageSource="Material",
Content="Unable to save config, return error: "..ag
}
end

b:NewNotify{
Title="Interface",
Icon="info",
ImageSource="Material",
Content=string.format("Created config %q",ab),
}

ae:Set{Values=b:RefreshConfigList()}
end
}

N:AddSection"Config Load/Settings"


ae=N:AddDropdown{
Title="Select Config",
Description="Select a config to load your settings on.",
Values=b:RefreshConfigList(),
Default={},
Multi=false,
SpecialType=nil,
Callback=function(af)
ac=af
end,
}

N:AddButton{
Title="Load Config",
Description="Load your saved config settings.",
Callback=function()
local af,ag=b:LoadConfig(ac)
if not af then
b:NewNotify{
Title="Interface",
Icon="error",
ImageSource="Material",
Content="Unable to load config, return error: "..ag
}
return
end

b:NewNotify{
Title="Interface",
Icon="info",
ImageSource="Material",
Content=string.format("Loaded config %q",ac),
}
end
}

N:AddButton{
Title="Overwrite Config",
Description="Overwrite your current config settings.",
Callback=function()
local af,ag=b:SaveConfig(ac)
if not af then
b:NewNotify{
Title="Interface",
Icon="error",
ImageSource="Material",
Content="Unable to overwrite config, return error: "..ag
}
return
end

b:NewNotify{
Title="Interface",
Icon="info",
ImageSource="Material",
Content=string.format("Overwrote config %q",ac),
}
end
}

N:AddButton{
Title="Refresh Config List",
Description="Refresh the current config list.",
Callback=function()
ae:Set{Values=b:RefreshConfigList()}
end,
}

local af
N:AddButton{
Title="Set as autoload",
Description="Set a config to auto load setting in your next session.",
Callback=function()
local ag=ac
writefile(b.Folder.."/settings/autoload.txt",ag)
af:Set{Text="Current autoload config: "..ag}

b:NewNotify{
Title="Interface",
Icon="info",
ImageSource="Material",
Content=string.format("Set %q to auto load",ag),
}
end,
}

af=N:AddParagraph{
Title="Current Auto Load",
Text="None"
}

N:AddButton{
Title="Delete Autoload",
Description="Delete The Autoload File",
Callback=function()

delfile(b.Folder.."/settings/autoload.txt")
af:Set{Text="None"}

b:NewNotify{
Title="Interface",
Icon="info",
ImageSource="Material",
Content="Deleted Autoload",
}
end,
}

if isfile(b.Folder.."/settings/autoload.txt")then
local ag=readfile(b.Folder.."/settings/autoload.txt")
af:Set{Text="Current autoload config: "..ag}
end
end

local aa={Toggle=
{
Save=function(aa,ab)
return{
type="Toggle",
flag=aa,
state=ab.CurrentValue or false
}
end,
Load=function(aa,ab)
if b.Values[aa]then
b.Values[aa]:Set{CurrentValue=ab.state}
end
end
},Slider=
{
Save=function(aa,ab)
return{
type="Slider",
flag=aa,
value=(ab.CurrentValue and tostring(ab.CurrentValue)),
}
end,
Load=function(aa,ab)
if b.Values[aa]and ab.value then
b.Values[aa]:Set{CurrentValue=ab.value}
end
end
},Input=
{
Save=function(aa,ab)
return{
type="Input",
flag=aa,
text=ab.CurrentValue
}
end,
Load=function(aa,ab)
if b.Values[aa]and ab.text and type(ab.text)=="string"then
b.Values[aa]:Set{CurrentValue=ab.text}
end
end
},Dropdown=
{
Save=function(aa,ab)
return{
type="Dropdown",
flag=aa,
value=ab.Default
}
end,
Load=function(aa,ab)
if b.Values[aa]and ab.value then
b.Values[aa]:Set{Default=ab.value}
end
end
},Colorpicker=

{
Save=function(aa,ab)
local function Color3ToHex(ac)
return string.format("#%02X%02X%02X",math.floor(ac.R*255),math.floor(ac.G*255),math.floor(ac.B*255))
end

return{
type="Colorpicker",
flag=aa,
color=Color3ToHex(ab.Color)or nil,
alpha=ab.Alpha
}
end,
Load=function(aa,ab)
local function HexToColor3(ac)
local ad=tonumber(ac:sub(2,3),16)/255
local ae=tonumber(ac:sub(4,5),16)/255
local af=tonumber(ac:sub(6,7),16)/255
return Color3.new(ad,ae,af)
end

if b.Values[aa]and ab.color then
b.Values[aa]:Set{Color=HexToColor3(ab.color)}
end
end
}
}


function N.BuildThemeSection(ab)

local ac=x.Template.Title:Clone()
ac.Text="Theming"
ac.Visible=true
ac.Parent=P
ac.TextTransparency=1
d:Create(ac,TweenInfo.new(0.4,Enum.EasingStyle.Exponential,Enum.EasingDirection.Out),{TextTransparency=0}):Play()

N:AddSection"Custom Editor"

local ad=N:AddColorPicker({
Title="Color 1",
Color=Color3.fromRGB(117,164,206),
},"LunaInterfaceSuitePrebuiltCPC1")

local ae=N:AddColorPicker({
Title="Color 2",
Color=Color3.fromRGB(123,201,201),
},"LunaInterfaceSuitePrebuiltCPC2")

local af=N:AddColorPicker({
Title="Color 3",
Color=Color3.fromRGB(224,138,184),
},"LunaInterfaceSuitePrebuiltCPC3")

task.wait(1)

ad:Set{
Callback=function(ag)
if ae and af then
b.ThemeGradient=ColorSequence.new{ColorSequenceKeypoint.new(0.00,ag or Color3.fromRGB(255,255,255)),ColorSequenceKeypoint.new(0.50,ae.Color or Color3.fromRGB(255,255,255)),ColorSequenceKeypoint.new(1.00,af.Color or Color3.fromRGB(255,255,255))}
q.ThemeRemote.Value=not q.ThemeRemote.Value
end
end
}

ae:Set{
Callback=function(ag)
if ad and af then
b.ThemeGradient=ColorSequence.new{ColorSequenceKeypoint.new(0.00,ad.Color or Color3.fromRGB(255,255,255)),ColorSequenceKeypoint.new(0.50,ag or Color3.fromRGB(255,255,255)),ColorSequenceKeypoint.new(1.00,af.Color or Color3.fromRGB(255,255,255))}
q.ThemeRemote.Value=not q.ThemeRemote.Value
end
end
}

af:Set{
Callback=function(ag)
if ae and ad then
b.ThemeGradient=ColorSequence.new{ColorSequenceKeypoint.new(0.00,ad.Color or Color3.fromRGB(255,255,255)),ColorSequenceKeypoint.new(0.50,ae.Color or Color3.fromRGB(255,255,255)),ColorSequenceKeypoint.new(1.00,ag or Color3.fromRGB(255,255,255))}
q.ThemeRemote.Value=not q.ThemeRemote.Value
end
end
}

N:AddSection"Preset Gradients"

for ag,ah in pairs(p)do
N:AddButton{
Name=tostring(ag),
Callback=function()
ad:Set{Color=ah[1]}
ae:Set{Color=ah[2]}
af:Set{Color=ah[3]}
end,
}
end

end


local function BuildFolderTree()
if l then return"Config system unavailable."end
local ab={
b.Folder,
b.Folder.."/settings"
}

for ac=1,#ab do
local ad=ab[ac]
if not isfolder(ad)then
makefolder(ad)
end
end
end

local function SetFolder()

if l then return"Config system unavailable."end

if H.ConfigSettings.RootFolder~=nil and H.ConfigSettings.RootFolder~=""then
b.Folder=H.ConfigSettings.RootFolder.."/"..H.ConfigSettings.ConfigFolder
else
b.Folder=H.ConfigSettings.ConfigFolder
end

BuildFolderTree()
end

SetFolder()

function b.SaveConfig(ab,ac)
if l then return"Config system unavailable."end

if(not ac)then
return false,"Please select a config file."
end

local ad=b.Folder.."/settings/"..ac..".luna"

local ae={
objects={}
}

for af,ag in next,b.Values do
if not aa[ag.Class]then continue end
if ag.IgnoreConfig then continue end

table.insert(ae.objects,aa[ag.Class].Save(af,ag))
end

local af,ag=pcall(e.JSONEncode,e,ae)
if not af then
return false,"Unable to encode into JSON data"
end

writefile(ad,ag)
return true
end

function b.LoadConfig(ab,ac)
if l then return"Config system unavailable."end

if(not ac)then
return false,"Please select a config file."
end

local ad=b.Folder.."/settings/"..ac..".luna"
if not isfile(ad)then return false,"Invalid file"end

local ae,af=pcall(e.JSONDecode,e,readfile(ad))
if not ae then return false,"Unable to decode JSON data."end

for ag,ah in next,af.objects do
if aa[ah.type]then
task.spawn(function()
aa[ah.type].Load(ah.flag,ah)
end)
end
end

return true
end

function b.LoadAutoloadConfig(ab)
if isfile(b.Folder.."/settings/autoload.txt")then

if l then return"Config system unavailable."end

local ac=readfile(b.Folder.."/settings/autoload.txt")

local ad,ae=b:LoadConfig(ac)
if not ad then
return b:NewNotify{
Title="Interface",
Icon="sparkle",
ImageSource="Material",
Content="Failed to load autoload config: "..ae,
}
end

b:NewNotify{
Title="Interface",
Icon="sparkle",
ImageSource="Material",
Content=string.format("Auto loaded config %q",ac),
}

end
end

function b.RefreshConfigList(ab)
if l then return"Config system unavailable."end

local ac=listfiles(b.Folder.."/settings")

local ad={}
for ae=1,#ac do
local af=ac[ae]
if af:sub(-5)==".luna"then
local ag=af:find(".luna",1,true)
local ah=ag

local ai=af:sub(ag,ag)
while ai~="/"and ai~="\\"and ai~=""do
ag=ag-1
ai=af:sub(ag,ag)
end

if ai=="/"or ai=="\\"then
local aj=af:sub(ag+1,ah-1)
if aj~="Values"then
table.insert(ad,aj)
end
end
end
end

return ad
end
return N
end


x.Parent.Visible=true
tween(x.Parent,{BackgroundTransparency=0.1})
z.Visible=true
tween(z.Line,{BackgroundTransparency=0})

for aa,ab in ipairs(s.Controls:GetChildren())do
if ab.ClassName=="Frame"and ab.Name~="Theme"then
ab.Visible=true
tween(ab,{BackgroundTransparency=0.25})
tween(ab.UIStroke,{Transparency=0.5})
tween(ab.ImageLabel,{ImageTransparency=0.25})
end
end

s.Controls.Close.ImageLabel.MouseButton1Click:Connect(function()
Hide(s,J.Bind,true)
u.Visible=false
J.State=false
if c.KeyboardEnabled==false then
q.MobileSupport.Visible=true
end
end)
s.Controls.Close.MouseEnter:Connect(function()
tween(s.Controls.Close.ImageLabel,{ImageColor3=Color3.new(1,1,1)})
end)
s.Controls.Close.MouseLeave:Connect(function()
tween(s.Controls.Close.ImageLabel,{ImageColor3=Color3.fromRGB(195,195,195)})
end)

c.InputBegan:Connect(function(aa,ab)
if ab then return end
if J.State then return end
if aa.KeyCode==J.Bind then
Unhide(s,J.CurrentTab)
q.MobileSupport.Visible=false
u.Visible=true
J.State=true
end
end)

s.Logo.MouseButton1Click:Connect(function()
if z.Size.X.Offset==205 then
tween(x.Parent,{Size=UDim2.new(1,-55,x.Parent.Size.Y.Scale,x.Parent.Size.Y.Offset)})
tween(z,{Size=UDim2.new(z.Size.X.Scale,55,z.Size.Y.Scale,z.Size.Y.Offset)})
else
tween(x.Parent,{Size=UDim2.new(1,-205,x.Parent.Size.Y.Scale,x.Parent.Size.Y.Offset)})
tween(z,{Size=UDim2.new(z.Size.X.Scale,205,z.Size.Y.Scale,z.Size.Y.Offset)})
end
end)

s.Controls.ToggleSize.ImageLabel.MouseButton1Click:Connect(function()
J.Size=not J.Size
if J.Size then
Minimize(s)
u.Visible=false
else
Maximise(s)
u.Visible=true
end
end)
s.Controls.ToggleSize.MouseEnter:Connect(function()
tween(s.Controls.ToggleSize.ImageLabel,{ImageColor3=Color3.new(1,1,1)})
end)
s.Controls.ToggleSize.MouseLeave:Connect(function()
tween(s.Controls.ToggleSize.ImageLabel,{ImageColor3=Color3.fromRGB(195,195,195)})
end)

s.Controls.Theme.ImageLabel.MouseButton1Click:Connect(function()
if J.Settings then
J.Settings:Activate()
x.Settings.CanvasPosition=Vector2.new(0,698)
end
end)
s.Controls.Theme.MouseEnter:Connect(function()
tween(s.Controls.Theme.ImageLabel,{ImageColor3=Color3.new(1,1,1)})
end)
s.Controls.Theme.MouseLeave:Connect(function()
tween(s.Controls.Theme.ImageLabel,{ImageColor3=Color3.fromRGB(195,195,195)})
end)


q.MobileSupport.Interact.MouseButton1Click:Connect(function()
Unhide(s,J.CurrentTab)
u.Visible=true
J.State=true
q.MobileSupport.Visible=false
end)

return J
end

function b.Destroy(aa)
s.Visible=false
for ab,ac in ipairs(B:GetChildren())do
if ac.ClassName=="Frame"then
ac.Visible=false
ac:Destroy()
end
end
q:Destroy()
end
return b
