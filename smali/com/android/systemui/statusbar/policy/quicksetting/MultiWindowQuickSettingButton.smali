.class public Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton;
.super Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;
.source "MultiWindowQuickSettingButton.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton$EasyModeObserver;,
        Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton$MultiWindowModeObserver;
    }
.end annotation


# static fields
.field private static final DB_MULTI_WINDOW_MODE_ON:Ljava/lang/String; = "multi_window_enabled"

.field private static final EASY_MODE_OFF:Ljava/lang/String; = "easy_mode_switch"

.field private static final TW_TAG:Ljava/lang/String; = "STATUSBAR-MultiWindowSettingButton"


# instance fields
.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mEasyModeObserver:Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton$EasyModeObserver;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mMultiWindowModeObserver:Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton$MultiWindowModeObserver;

.field private mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

.field private mState:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 11
    .parameter "context"

    .prologue
    const/4 v7, 0x0

    const/4 v10, -0x2

    const/4 v9, 0x1

    .line 64
    const/4 v2, 0x0

    const v3, 0x7f0c00e7

    const v4, 0x7f0201c1

    const v5, 0x7f0201c0

    const v6, 0x7f0201bf

    move-object v0, p0

    move-object v1, p1

    move v8, v7

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIIIII)V

    .line 51
    new-instance v0, Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton$1;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 71
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    .line 72
    new-instance v0, Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton$MultiWindowModeObserver;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton$MultiWindowModeObserver;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton;->mMultiWindowModeObserver:Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton$MultiWindowModeObserver;

    .line 73
    new-instance v0, Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton$EasyModeObserver;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton$EasyModeObserver;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton;->mEasyModeObserver:Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton$EasyModeObserver;

    .line 74
    invoke-virtual {p0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton;->setListener(Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;)V

    .line 76
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "multi_window_enabled"

    invoke-static {v0, v1, v9, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v9, :cond_1

    move v0, v9

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton;->setActivateStatus(I)V

    .line 79
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "easy_mode_switch"

    invoke-static {v0, v1, v9, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_0

    .line 80
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton;->setActivateStatus(I)V

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "multi_window_enabled"

    invoke-static {v0, v1, v9, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v9, :cond_2

    :goto_1
    iput-boolean v9, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton;->mState:Z

    .line 84
    return-void

    .line 76
    :cond_1
    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    move v9, v7

    .line 82
    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton;->changeStatus()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton;->mState:Z

    return v0
.end method

.method private changeStatus()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 175
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton;->getMode()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton;->mState:Z

    .line 177
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "easy_mode_switch"

    const/4 v4, -0x2

    invoke-static {v0, v3, v1, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_1

    .line 178
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton;->setActivateStatus(I)V

    .line 184
    :goto_1
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mIsProcessing:Z

    .line 185
    return-void

    :cond_0
    move v0, v2

    .line 175
    goto :goto_0

    .line 180
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton;->mState:Z

    if-eqz v0, :cond_2

    :goto_2
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton;->setActivateStatus(I)V

    goto :goto_1

    :cond_2
    const/4 v1, 0x2

    goto :goto_2
.end method

.method private getMode()I
    .locals 4

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "multi_window_enabled"

    const/4 v2, 0x1

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method private setMode(I)V
    .locals 3
    .parameter "mode"

    .prologue
    .line 158
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mIsProcessing:Z

    .line 160
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "multi_window_enabled"

    const/4 v2, -0x2

    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 167
    return-void
.end method


# virtual methods
.method public deinit()V
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton;->mMultiWindowModeObserver:Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton$MultiWindowModeObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 101
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton;->mEasyModeObserver:Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton$EasyModeObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 102
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 103
    return-void
.end method

.method public doNext()V
    .locals 1

    .prologue
    .line 238
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton;->removeEnabledScreenReaderValue()V

    .line 239
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton;->setActivateStatus(I)V

    .line 240
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton;->setMode(I)V

    .line 241
    return-void
.end method

.method public doPrevious()V
    .locals 0

    .prologue
    .line 244
    return-void
.end method

.method public init()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x2

    .line 87
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "multi_window_enabled"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton;->mMultiWindowModeObserver:Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton$MultiWindowModeObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 91
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "easy_mode_switch"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton;->mEasyModeObserver:Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton$EasyModeObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 95
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 97
    return-void
.end method

.method public onClick(Z)V
    .locals 5
    .parameter "state"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 106
    const-string v0, "STATUSBAR-MultiWindowSettingButton"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onClick():"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    const-string v3, "enterprise_policy"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 110
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    .line 111
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    invoke-virtual {v0, v2}, Landroid/app/enterprise/RestrictionPolicy;->isSettingsChangesAllowed(Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 112
    const-string v0, "STATUSBAR-MultiWindowSettingButton"

    const-string v1, "onClick(): Multi window state change is not allowed"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :cond_0
    :goto_0
    return-void

    .line 118
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mIsProcessing:Z

    if-eqz v0, :cond_2

    .line 119
    const-string v0, "STATUSBAR-MultiWindowSettingButton"

    const-string v1, "onClick(): Processing..."

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 125
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/enterprise/kioskmode/KioskMode;->getInstance(Landroid/content/Context;)Landroid/app/enterprise/kioskmode/KioskMode;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/enterprise/kioskmode/KioskMode;->isMultiWindowModeAllowed(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton;->mState:Z

    if-eq v0, p1, :cond_0

    .line 131
    if-eqz p1, :cond_3

    .line 132
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton;->isEnabledScreenReaderService()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 133
    const v0, 0x7f0c00f3

    const v1, 0x7f0c00f4

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton;->showTalkBackDisablePopup(II)V

    goto :goto_0

    .line 139
    :cond_3
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton;->setActivateStatus(I)V

    .line 140
    if-eqz p1, :cond_4

    move v0, v1

    :goto_1
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton;->setMode(I)V

    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_1
.end method

.method public onLongClick()V
    .locals 2

    .prologue
    .line 151
    const-string v0, "com.android.settings"

    const-string v1, "com.android.settings.Settings$DisplaySettingsActivity"

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton;->callActivity(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    return-void
.end method

.method public userSwitched()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 250
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton;->mMultiWindowModeObserver:Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton$MultiWindowModeObserver;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton$MultiWindowModeObserver;->onChange(Z)V

    .line 251
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton;->mEasyModeObserver:Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton$EasyModeObserver;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton$EasyModeObserver;->onChange(Z)V

    .line 252
    return-void
.end method
