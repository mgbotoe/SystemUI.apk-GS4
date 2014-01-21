.class public Lcom/android/systemui/statusbar/policy/quicksetting/DormantModeQuickSettingButton;
.super Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;
.source "DormantModeQuickSettingButton.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/quicksetting/DormantModeQuickSettingButton$DormantModeObserver;
    }
.end annotation


# static fields
.field private static final DB_DORMANT_SWITCH_ONOFF:Ljava/lang/String; = "dormant_switch_onoff"

.field private static final DORMANTMODE_WARNING_CHECKED:Ljava/lang/String; = "quickpanel_dormantmode_checked"

.field private static final TW_TAG:Ljava/lang/String; = "STATUSBAR-DormantModeController"


# instance fields
.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mConfirmDialog:Landroid/app/AlertDialog;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mDormantModeObserver:Lcom/android/systemui/statusbar/policy/quicksetting/DormantModeQuickSettingButton$DormantModeObserver;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mState:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 10
    .parameter "context"

    .prologue
    const/4 v9, 0x1

    const/4 v7, 0x0

    .line 89
    const/4 v2, 0x0

    const v3, 0x7f0c00da

    const v4, 0x7f0201b8

    const v5, 0x7f0201b7

    const v6, 0x7f0201b6

    move-object v0, p0

    move-object v1, p1

    move v8, v7

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIIIII)V

    .line 77
    new-instance v0, Lcom/android/systemui/statusbar/policy/quicksetting/DormantModeQuickSettingButton$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/DormantModeQuickSettingButton$1;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/DormantModeQuickSettingButton;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/DormantModeQuickSettingButton;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 96
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/DormantModeQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    .line 97
    new-instance v0, Lcom/android/systemui/statusbar/policy/quicksetting/DormantModeQuickSettingButton$DormantModeObserver;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/DormantModeQuickSettingButton$DormantModeObserver;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/DormantModeQuickSettingButton;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/DormantModeQuickSettingButton;->mDormantModeObserver:Lcom/android/systemui/statusbar/policy/quicksetting/DormantModeQuickSettingButton$DormantModeObserver;

    .line 98
    invoke-virtual {p0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/DormantModeQuickSettingButton;->setListener(Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;)V

    .line 99
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/DormantModeQuickSettingButton;->getMode()I

    move-result v0

    if-eqz v0, :cond_0

    move v7, v9

    :cond_0
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/policy/quicksetting/DormantModeQuickSettingButton;->mState:Z

    .line 100
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/DormantModeQuickSettingButton;->mState:Z

    if-eqz v0, :cond_1

    :goto_0
    invoke-virtual {p0, v9}, Lcom/android/systemui/statusbar/policy/quicksetting/DormantModeQuickSettingButton;->setActivateStatus(I)V

    .line 101
    return-void

    .line 100
    :cond_1
    const/4 v9, 0x2

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/quicksetting/DormantModeQuickSettingButton;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/DormantModeQuickSettingButton;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/quicksetting/DormantModeQuickSettingButton;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/quicksetting/DormantModeQuickSettingButton;->setMode(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/policy/quicksetting/DormantModeQuickSettingButton;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/DormantModeQuickSettingButton;->mState:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/systemui/statusbar/policy/quicksetting/DormantModeQuickSettingButton;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/DormantModeQuickSettingButton;->mState:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/policy/quicksetting/DormantModeQuickSettingButton;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/DormantModeQuickSettingButton;->getMode()I

    move-result v0

    return v0
.end method

.method private getMode()I
    .locals 4

    .prologue
    .line 213
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/DormantModeQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "dormant_switch_onoff"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method private isAllOptionsDisabled()Z
    .locals 9

    .prologue
    const/4 v8, -0x2

    const/4 v5, 0x0

    .line 217
    const-string v6, "ro.build.characteristics"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 219
    .local v1, deviceType:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/quicksetting/DormantModeQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v7, "dormant_disable_incoming_calls"

    invoke-static {v6, v7, v5, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    .line 221
    .local v2, incoming:I
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/quicksetting/DormantModeQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v7, "dormant_disable_notifications"

    invoke-static {v6, v7, v5, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    .line 223
    .local v4, notification:I
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/quicksetting/DormantModeQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v7, "dormant_disable_alarm_and_timer"

    invoke-static {v6, v7, v5, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 225
    .local v0, alarm:I
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/quicksetting/DormantModeQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v7, "dormant_disable_led_indicator"

    invoke-static {v6, v7, v5, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    .line 228
    .local v3, indicator:I
    if-eqz v1, :cond_0

    const-string v6, "tablet"

    invoke-virtual {v1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 229
    const/4 v3, 0x0

    .line 233
    :cond_0
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/systemui/statusbar/policy/quicksetting/DormantModeQuickSettingButton;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/systemui/statusbar/policy/quicksetting/DormantModeQuickSettingButton;->isWifiOnly(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 234
    :cond_1
    const/4 v2, 0x0

    .line 237
    :cond_2
    if-nez v2, :cond_3

    if-nez v4, :cond_3

    if-nez v0, :cond_3

    if-nez v3, :cond_3

    .line 238
    const/4 v5, 0x1

    .line 240
    :cond_3
    return v5
.end method

.method public static isVoiceCapable(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 320
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 322
    .local v0, telephony:Landroid/telephony/TelephonyManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isWifiOnly(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 326
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 328
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private onDisplayDormantModeAlert()V
    .locals 10

    .prologue
    const v9, 0x7f09010b

    const/high16 v8, -0x100

    .line 245
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 247
    .local v2, mDormantModeAlertLayout:Landroid/view/LayoutInflater;
    const v5, 0x7f040045

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 250
    .local v3, mDormantModeAlertView:Landroid/view/View;
    const v5, 0x7f09010c

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    .line 252
    .local v4, mDormantModeCheckBox:Landroid/widget/CheckBox;
    new-instance v5, Lcom/android/systemui/statusbar/policy/quicksetting/DormantModeQuickSettingButton$4;

    invoke-direct {v5, p0, v4}, Lcom/android/systemui/statusbar/policy/quicksetting/DormantModeQuickSettingButton$4;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/DormantModeQuickSettingButton;Landroid/widget/CheckBox;)V

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 267
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    invoke-direct {v0, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 268
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v5, 0x7f0c0110

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 269
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 270
    const v5, 0x104000a

    new-instance v6, Lcom/android/systemui/statusbar/policy/quicksetting/DormantModeQuickSettingButton$5;

    invoke-direct {v6, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/DormantModeQuickSettingButton$5;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/DormantModeQuickSettingButton;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 276
    const/high16 v5, 0x104

    new-instance v6, Lcom/android/systemui/statusbar/policy/quicksetting/DormantModeQuickSettingButton$6;

    invoke-direct {v6, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/DormantModeQuickSettingButton$6;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/DormantModeQuickSettingButton;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 284
    sget-boolean v5, Lcom/android/systemui/statusbar/BaseStatusBar;->supportVoice:Z

    if-nez v5, :cond_0

    .line 285
    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c010f

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 289
    :cond_0
    sget-boolean v5, Lcom/android/systemui/statusbar/BaseStatusBar;->isLightTheme:Z

    if-eqz v5, :cond_1

    .line 290
    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 291
    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 294
    :cond_1
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 296
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/DormantModeQuickSettingButton;->statusBarCollapse()V

    .line 298
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/quicksetting/DormantModeQuickSettingButton;->mAlertDialog:Landroid/app/AlertDialog;

    .line 301
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/quicksetting/DormantModeQuickSettingButton;->mAlertDialog:Landroid/app/AlertDialog;

    new-instance v6, Lcom/android/systemui/statusbar/policy/quicksetting/DormantModeQuickSettingButton$7;

    invoke-direct {v6, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/DormantModeQuickSettingButton$7;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/DormantModeQuickSettingButton;)V

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 309
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    const-string v6, "keyguard"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    .line 310
    .local v1, kgm:Landroid/app/KeyguardManager;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 311
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/quicksetting/DormantModeQuickSettingButton;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v6, 0x7d9

    invoke-virtual {v5, v6}, Landroid/view/Window;->setType(I)V

    .line 315
    :goto_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/quicksetting/DormantModeQuickSettingButton;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    .line 316
    return-void

    .line 313
    :cond_2
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/quicksetting/DormantModeQuickSettingButton;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v6, 0x7d8

    invoke-virtual {v5, v6}, Landroid/view/Window;->setType(I)V

    goto :goto_0
.end method

.method private setMode(I)V
    .locals 3
    .parameter "mode"

    .prologue
    .line 201
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/DormantModeQuickSettingButton;->getMode()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 210
    :goto_0
    return-void

    .line 204
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mIsProcessing:Z

    .line 207
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/DormantModeQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "dormant_switch_onoff"

    const/4 v2, -0x2

    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 209
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.DORMANTMODE_SWITCH_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0
.end method

.method private showConfirmPopup()V
    .locals 5

    .prologue
    .line 164
    const/4 v1, 0x0

    .line 165
    .local v1, theme:I
    sget-boolean v2, Lcom/android/systemui/statusbar/BaseStatusBar;->isLightTheme:Z

    if-eqz v2, :cond_0

    .line 166
    const/4 v1, 0x5

    .line 168
    :cond_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v3, 0x1040014

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0c0111

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    new-instance v4, Lcom/android/systemui/statusbar/policy/quicksetting/DormantModeQuickSettingButton$3;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/DormantModeQuickSettingButton$3;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/DormantModeQuickSettingButton;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x104

    new-instance v4, Lcom/android/systemui/statusbar/policy/quicksetting/DormantModeQuickSettingButton$2;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/DormantModeQuickSettingButton$2;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/DormantModeQuickSettingButton;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/DormantModeQuickSettingButton;->mConfirmDialog:Landroid/app/AlertDialog;

    .line 188
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/DormantModeQuickSettingButton;->statusBarCollapse()V

    .line 190
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    const-string v3, "keyguard"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 191
    .local v0, kgm:Landroid/app/KeyguardManager;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 192
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/DormantModeQuickSettingButton;->mConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d9

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 196
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/DormantModeQuickSettingButton;->mConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 197
    return-void

    .line 194
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/DormantModeQuickSettingButton;->mConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d8

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    goto :goto_0
.end method


# virtual methods
.method public deinit()V
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/DormantModeQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/DormantModeQuickSettingButton;->mDormantModeObserver:Lcom/android/systemui/statusbar/policy/quicksetting/DormantModeQuickSettingButton$DormantModeObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 117
    return-void
.end method

.method public init()V
    .locals 6

    .prologue
    .line 104
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/DormantModeQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "dormant_switch_onoff"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/quicksetting/DormantModeQuickSettingButton;->mDormantModeObserver:Lcom/android/systemui/statusbar/policy/quicksetting/DormantModeQuickSettingButton$DormantModeObserver;

    const/4 v5, -0x2

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 109
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 110
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 112
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/DormantModeQuickSettingButton;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 113
    return-void
.end method

.method public onClick(Z)V
    .locals 8
    .parameter "state"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 121
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mIsProcessing:Z

    if-eqz v3, :cond_1

    .line 122
    const-string v3, "STATUSBAR-DormantModeController"

    const-string v4, "onClick(): Processing..."

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    :cond_0
    :goto_0
    return-void

    .line 127
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    const-string v4, "enterprise_policy"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 128
    .local v1, mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;
    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v2

    .line 129
    .local v2, mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;
    invoke-virtual {v2, v7}, Landroid/app/enterprise/RestrictionPolicy;->isSettingsChangesAllowed(Z)Z

    move-result v3

    if-nez v3, :cond_2

    .line 130
    const-string v3, "STATUSBAR-DormantModeController"

    const-string v4, "onClick(): BlockingMode state change is not allowed"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 134
    :cond_2
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/DormantModeQuickSettingButton;->mState:Z

    if-eq v3, p1, :cond_0

    .line 135
    if-eqz p1, :cond_3

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/DormantModeQuickSettingButton;->isAllOptionsDisabled()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 136
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/DormantModeQuickSettingButton;->showConfirmPopup()V

    goto :goto_0

    .line 139
    :cond_3
    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/policy/quicksetting/DormantModeQuickSettingButton;->setActivateStatus(I)V

    .line 141
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "quickpanel_dormantmode_checked"

    const/4 v5, -0x2

    invoke-static {v3, v4, v6, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 144
    .local v0, mChecked:I
    if-eqz p1, :cond_5

    .line 145
    if-nez v0, :cond_4

    .line 146
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/DormantModeQuickSettingButton;->onDisplayDormantModeAlert()V

    goto :goto_0

    .line 148
    :cond_4
    invoke-direct {p0, v7}, Lcom/android/systemui/statusbar/policy/quicksetting/DormantModeQuickSettingButton;->setMode(I)V

    goto :goto_0

    .line 151
    :cond_5
    invoke-direct {p0, v6}, Lcom/android/systemui/statusbar/policy/quicksetting/DormantModeQuickSettingButton;->setMode(I)V

    goto :goto_0
.end method

.method public onLongClick()V
    .locals 2

    .prologue
    .line 159
    const-string v0, "com.android.settings"

    const-string v1, "com.android.settings.Settings$DormantmodeSettingsActivity"

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/DormantModeQuickSettingButton;->callActivity(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    return-void
.end method

.method public userSwitched()V
    .locals 2

    .prologue
    .line 349
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/DormantModeQuickSettingButton;->mDormantModeObserver:Lcom/android/systemui/statusbar/policy/quicksetting/DormantModeQuickSettingButton$DormantModeObserver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/DormantModeQuickSettingButton$DormantModeObserver;->onChange(Z)V

    .line 350
    return-void
.end method
