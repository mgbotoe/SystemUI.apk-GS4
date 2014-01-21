.class Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28;
.super Landroid/content/BroadcastReceiver;
.source "PhoneStatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0
    .parameter

    .prologue
    .line 3581
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 17
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 3584
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 3585
    .local v1, action:Ljava/lang/String;
    const-string v12, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 3586
    const/4 v8, 0x0

    .line 3587
    .local v8, flags:I
    const-string v12, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 3588
    const-string v12, "reason"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 3589
    .local v10, reason:Ljava/lang/String;
    if-eqz v10, :cond_0

    const-string v12, "recentapps"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 3590
    or-int/lit8 v8, v8, 0x2

    .line 3593
    .end local v10           #reason:Ljava/lang/String;
    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v12, v8}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapsePanels(I)V

    .line 3713
    .end local v8           #flags:I
    :cond_1
    :goto_0
    return-void

    .line 3595
    :cond_2
    const-string v12, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 3597
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v12}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->makeExpandedInvisible()V

    .line 3598
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const/4 v13, 0x0

    #calls: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->notifyNavigationBarScreenOn(Z)V
    invoke-static {v12, v13}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$5700(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)V

    .line 3602
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v12, v12, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    if-eqz v12, :cond_1

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v12, v12, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v12}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->marqueeStatusBar()V

    goto :goto_0

    .line 3606
    :cond_3
    const-string v12, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 3610
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v12, v12, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisplay:Landroid/view/Display;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v13, v13, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurrentDisplaySize:Landroid/graphics/Point;

    invoke-virtual {v12, v13}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 3612
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v12}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateResources()V

    .line 3613
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    #calls: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->repositionNavigationBar()V
    invoke-static {v12}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$5800(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    .line 3614
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const/16 v13, -0x2710

    invoke-virtual {v12, v13}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateExpandedViewPos(I)V

    .line 3615
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    #calls: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateShowSearchHoldoff()V
    invoke-static {v12}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$5900(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    goto :goto_0

    .line 3617
    :cond_4
    const-string v12, "android.intent.action.SCREEN_ON"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 3619
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    #calls: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->repositionNavigationBar()V
    invoke-static {v12}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$5800(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    .line 3620
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const/4 v13, 0x1

    #calls: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->notifyNavigationBarScreenOn(Z)V
    invoke-static {v12, v13}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$5700(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)V

    .line 3623
    sget-boolean v12, Lcom/android/systemui/statusbar/Feature;->mPLMNIconDisplay:Z

    if-eqz v12, :cond_1

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v12}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->showPlmnString()V

    goto/16 :goto_0

    .line 3626
    :cond_5
    const-string v12, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 3627
    const-string v12, "level"

    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 3628
    .local v3, battLevel:I
    const-string v12, "status"

    const/4 v13, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 3629
    .local v4, battStatus:I
    const/4 v12, 0x5

    if-gt v3, v12, :cond_6

    const/4 v12, 0x2

    if-eq v4, v12, :cond_6

    .line 3630
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const/4 v13, 0x0

    #setter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBrightnessEnablebyBattery:Z
    invoke-static {v12, v13}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$6002(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)Z

    .line 3634
    :goto_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    #calls: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setBrightnessControllerVisivility()V
    invoke-static {v12}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$400(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    goto/16 :goto_0

    .line 3632
    :cond_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const/4 v13, 0x1

    #setter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBrightnessEnablebyBattery:Z
    invoke-static {v12, v13}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$6002(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)Z

    goto :goto_1

    .line 3635
    .end local v3           #battLevel:I
    .end local v4           #battStatus:I
    :cond_7
    const-string v12, "com.sec.android.enterprisenotificationcenter.ENTERPRISE_MODE_CHANGE"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 3636
    const-string v12, "PhoneStatusBar"

    const-string v13, "onReceive mStartConferenceReceiver!"

    invoke-static {v12, v13}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3638
    new-instance v9, Landroid/content/Intent;

    const-string v12, "android.intent.action.MAIN"

    invoke-direct {v9, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3639
    .local v9, knoxintent:Landroid/content/Intent;
    const-string v12, "android.intent.category.HOME"

    invoke-virtual {v9, v12}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 3640
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    const/high16 v13, 0x1

    invoke-virtual {v12, v9, v13}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v11

    .line 3641
    .local v11, resolveInfo:Landroid/content/pm/ResolveInfo;
    iget-object v12, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v12, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    .line 3642
    .local v6, currentHomePackage:Ljava/lang/String;
    const-string v12, "EnterpriseModeChangeReceiver"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "currentHomePackage="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3643
    const-string v12, "com.sec.android.app.knoxlauncher"

    invoke-virtual {v6, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 3644
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const/4 v13, 0x1

    #setter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsKnoxStatusBar:Z
    invoke-static {v12, v13}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$6102(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)Z

    .line 3645
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v12, v12, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const v13, 0x7f0200ae

    invoke-virtual {v12, v13}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->setBackgroundResource(I)V

    .line 3646
    const-string v12, "EnterpriseModeChangeReceiver"

    const-string v13, "set security mode"

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3648
    :cond_8
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const/4 v13, 0x0

    #setter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsKnoxStatusBar:Z
    invoke-static {v12, v13}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$6102(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)Z

    .line 3650
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    #getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsTransparentStatusBar:Z
    invoke-static {v12}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$6200(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 3651
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v12, v12, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const v13, 0x7f020267

    invoke-virtual {v12, v13}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->setBackgroundResource(I)V

    .line 3656
    :goto_2
    const-string v12, "EnterpriseModeChangeReceiver"

    const-string v13, "set normal mode"

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3653
    :cond_9
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v12, v12, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const v13, 0x7f020259

    invoke-virtual {v12, v13}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->setBackgroundResource(I)V

    goto :goto_2

    .line 3658
    .end local v6           #currentHomePackage:Ljava/lang/String;
    .end local v9           #knoxintent:Landroid/content/Intent;
    .end local v11           #resolveInfo:Landroid/content/pm/ResolveInfo;
    :cond_a
    const-string v12, "com.android.systemui.statusbar.COLLAPSED"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b

    .line 3659
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const/4 v13, 0x0

    #calls: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->doMarquee(Z)V
    invoke-static {v12, v13}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$6300(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)V

    goto/16 :goto_0

    .line 3660
    :cond_b
    const-string v12, "com.samsung.android.intent.action.SECRET_MODE_ON"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_c

    const-string v12, "com.samsung.android.intent.action.SECRET_MODE_OFF"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_d

    .line 3662
    :cond_c
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    #getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;
    invoke-static {v12}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$6400(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/BaseStatusBar$H;

    move-result-object v12

    const/16 v13, 0x3fd

    invoke-virtual {v12, v13}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeMessages(I)V

    .line 3663
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    #getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;
    invoke-static {v12}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$6500(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/BaseStatusBar$H;

    move-result-object v12

    const/16 v13, 0x3fd

    invoke-virtual {v12, v13}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 3664
    :cond_d
    const-string v12, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_f

    .line 3665
    sget-boolean v12, Lcom/android/systemui/statusbar/Feature;->mUsb3PopupForVZW:Z

    if-eqz v12, :cond_1

    .line 3666
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v12, v12, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "airplane_mode_on_reason_usb3"

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_e

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v12, v12, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "airplane_mode_on"

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_e

    .line 3668
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v12, v12, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "airplane_mode_on_reason_usb3"

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3669
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v12, v12, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "airplane_mode_on"

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3671
    new-instance v2, Landroid/content/Intent;

    const-string v12, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v2, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3672
    .local v2, airplaneIntent:Landroid/content/Intent;
    const/high16 v12, 0x2000

    invoke-virtual {v2, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3673
    const-string v12, "state"

    const/4 v13, 0x0

    invoke-virtual {v2, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3674
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v12, v12, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v12, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3675
    const-string v12, "STATUSBAR-PhoneStatusBar"

    const-string v13, "ACTION_POWER_DISCONNECTED received() - sendBroadcast : false"

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3677
    .end local v2           #airplaneIntent:Landroid/content/Intent;
    :cond_e
    const-string v12, "STATUSBAR-PhoneStatusBar"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Intent.ACTION_POWER_DISCONNECTED DB_AIRPLANEMODE_ON_REASON_USB3 = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v14, v14, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "airplane_mode_on_reason_usb3"

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " Settings.Global.AIRPLANE_MODE_ON = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v14, v14, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "airplane_mode_on"

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3687
    :cond_f
    const-string v12, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 3689
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v12

    invoke-interface {v12}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v12

    iget v5, v12, Landroid/content/pm/UserInfo;->id:I

    .line 3690
    .local v5, curUserId:I
    new-instance v9, Landroid/content/Intent;

    const-string v12, "android.intent.action.MAIN"

    invoke-direct {v9, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3691
    .restart local v9       #knoxintent:Landroid/content/Intent;
    const-string v12, "android.intent.category.HOME"

    invoke-virtual {v9, v12}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 3692
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    const/high16 v13, 0x1

    invoke-virtual {v12, v9, v13}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v11

    .line 3693
    .restart local v11       #resolveInfo:Landroid/content/pm/ResolveInfo;
    iget-object v12, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v12, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    .line 3694
    .restart local v6       #currentHomePackage:Ljava/lang/String;
    const-string v12, "com.sec.android.app.knoxlauncher"

    invoke-virtual {v6, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_10

    sget-object v12, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v12}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v12

    if-ne v5, v12, :cond_10

    .line 3695
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const/4 v13, 0x1

    #setter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsKnoxStatusBar:Z
    invoke-static {v12, v13}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$6102(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)Z

    .line 3696
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v12, v12, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const v13, 0x7f0200ae

    invoke-virtual {v12, v13}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->setBackgroundResource(I)V

    .line 3697
    const-string v12, "EnterpriseModeChangeReceiver"

    const-string v13, "set security mode"

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 3709
    .end local v5           #curUserId:I
    .end local v6           #currentHomePackage:Ljava/lang/String;
    .end local v9           #knoxintent:Landroid/content/Intent;
    .end local v11           #resolveInfo:Landroid/content/pm/ResolveInfo;
    :catch_0
    move-exception v7

    .line 3710
    .local v7, e:Landroid/os/RemoteException;
    invoke-virtual {v7}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 3699
    .end local v7           #e:Landroid/os/RemoteException;
    .restart local v5       #curUserId:I
    .restart local v6       #currentHomePackage:Ljava/lang/String;
    .restart local v9       #knoxintent:Landroid/content/Intent;
    .restart local v11       #resolveInfo:Landroid/content/pm/ResolveInfo;
    :cond_10
    :try_start_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const/4 v13, 0x0

    #setter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsKnoxStatusBar:Z
    invoke-static {v12, v13}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$6102(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)Z

    .line 3701
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    #getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsTransparentStatusBar:Z
    invoke-static {v12}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$6200(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z

    move-result v12

    if-eqz v12, :cond_11

    .line 3702
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v12, v12, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const v13, 0x7f020267

    invoke-virtual {v12, v13}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->setBackgroundResource(I)V

    .line 3706
    :goto_3
    const-string v12, "EnterpriseModeChangeReceiver"

    const-string v13, "set normal mode"

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3704
    :cond_11
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v12, v12, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const v13, 0x7f020259

    invoke-virtual {v12, v13}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->setBackgroundResource(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3
.end method
