.class public Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;
.super Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;
.source "AirViewQuickSettingButton.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton$AirViewModeObserver;,
        Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton$MagnificationObserver;,
        Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton$AirViewMasterObserver;
    }
.end annotation


# static fields
.field private static final ACCESSIBILITY_DISPLAY_MAGNIFICATION_ENABLED:Ljava/lang/String; = "accessibility_display_magnification_enabled"

.field private static final AIR_MODE_MASTER_OFF:I = 0x0

.field private static final AIR_MODE_MASTER_ON:I = 0x1

.field private static final AUTO_AIR_MODE:I = 0x2

.field private static DB_AIR_VIEW:Ljava/lang/String; = null

.field private static final FINGER_AIR_MODE:I = 0x1

.field private static final PEN_AIR_MODE:I = 0x0

.field private static final TW_TAG:Ljava/lang/String; = "STATUSBAR-AirView"

.field private static final URI_AIR_VIEW_MODE:Ljava/lang/String; = "air_view_mode"

.field private static mAirViewType:I


# instance fields
.field private isMagnificationEnabled:Z

.field private mAirViewMasterObserver:Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton$AirViewMasterObserver;

.field private mAirViewMode:I

.field private mAirViewModeObserver:Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton$AirViewModeObserver;

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mMagnificationObserver:Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton$MagnificationObserver;

.field private mPenDettachedState:Z

.field private mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

.field private mState:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 13
    .parameter "context"

    .prologue
    const/4 v10, 0x2

    const/4 v12, 0x3

    const/4 v11, -0x2

    const/4 v9, 0x1

    const/4 v7, 0x0

    .line 98
    const/4 v2, 0x0

    const v3, 0x7f0c00ea

    const v4, 0x7f0201a6

    const v5, 0x7f0201a5

    const v6, 0x7f0201a4

    move-object v0, p0

    move-object v1, p1

    move v8, v7

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIIIII)V

    .line 72
    new-instance v0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton$1;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 106
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->getAirViewModeType()I

    move-result v0

    sput v0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->mAirViewType:I

    .line 107
    sget v0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->mAirViewType:I

    if-ne v0, v9, :cond_2

    .line 108
    const-string v0, "finger_air_view"

    sput-object v0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->DB_AIR_VIEW:Ljava/lang/String;

    .line 114
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    .line 115
    new-instance v0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton$AirViewMasterObserver;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton$AirViewMasterObserver;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->mAirViewMasterObserver:Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton$AirViewMasterObserver;

    .line 116
    new-instance v0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton$MagnificationObserver;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton$MagnificationObserver;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->mMagnificationObserver:Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton$MagnificationObserver;

    .line 117
    invoke-virtual {p0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->setListener(Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;)V

    .line 118
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->DB_AIR_VIEW:Ljava/lang/String;

    invoke-static {v0, v1, v7, v11}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v9, :cond_4

    move v0, v9

    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->setActivateStatus(I)V

    .line 120
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->DB_AIR_VIEW:Ljava/lang/String;

    invoke-static {v0, v1, v7, v11}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v9, :cond_5

    move v0, v9

    :goto_2
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->mState:Z

    .line 122
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_display_magnification_enabled"

    invoke-static {v0, v1, v7, v11}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v9, :cond_6

    :goto_3
    iput-boolean v9, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->isMagnificationEnabled:Z

    .line 124
    sget v0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->mAirViewType:I

    if-ne v0, v12, :cond_1

    .line 125
    new-instance v0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton$AirViewModeObserver;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton$AirViewModeObserver;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->mAirViewModeObserver:Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton$AirViewModeObserver;

    .line 126
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->DB_AIR_VIEW:Ljava/lang/String;

    invoke-static {v0, v1, v12, v11}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->mAirViewMode:I

    .line 128
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->mPenDettachedState:Z

    .line 130
    :cond_1
    return-void

    .line 109
    :cond_2
    sget v0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->mAirViewType:I

    if-ne v0, v10, :cond_3

    .line 110
    const-string v0, "pen_hovering"

    sput-object v0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->DB_AIR_VIEW:Ljava/lang/String;

    goto :goto_0

    .line 111
    :cond_3
    sget v0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->mAirViewType:I

    if-ne v0, v12, :cond_0

    .line 112
    const-string v0, "air_view_master_onoff"

    sput-object v0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->DB_AIR_VIEW:Ljava/lang/String;

    goto :goto_0

    :cond_4
    move v0, v10

    .line 118
    goto :goto_1

    :cond_5
    move v0, v7

    .line 120
    goto :goto_2

    :cond_6
    move v9, v7

    .line 122
    goto :goto_3
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->mPenDettachedState:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->DB_AIR_VIEW:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->mState:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->getMode()I

    move-result v0

    return v0
.end method

.method static synthetic access$502(Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->isMagnificationEnabled:Z

    return p1
.end method

.method static synthetic access$602(Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->mAirViewMode:I

    return p1
.end method

.method static synthetic access$700()I
    .locals 1

    .prologue
    .line 45
    sget v0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->mAirViewType:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->setDBvalues(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->showConfirmPopup()V

    return-void
.end method

.method private getAirViewModeType()I
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x1

    return v0
.end method

.method private getMode()I
    .locals 4

    .prologue
    .line 256
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->DB_AIR_VIEW:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method private setDBvalues(I)V
    .locals 6
    .parameter "mode"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, -0x2

    .line 211
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "air_view_mode"

    const/4 v2, 0x3

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->mAirViewMode:I

    .line 213
    if-ne p1, v4, :cond_3

    .line 214
    iget v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->mAirViewMode:I

    if-nez v0, :cond_1

    .line 215
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "pen_hovering"

    invoke-static {v0, v1, v4, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 218
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "finger_air_view"

    invoke-static {v0, v1, v5, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 242
    :cond_0
    :goto_0
    return-void

    .line 221
    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->mAirViewMode:I

    if-ne v0, v4, :cond_2

    .line 222
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "pen_hovering"

    invoke-static {v0, v1, v5, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 225
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "finger_air_view"

    invoke-static {v0, v1, v4, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_0

    .line 228
    :cond_2
    iget v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->mAirViewMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 229
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "pen_hovering"

    invoke-static {v0, v1, v4, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 232
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "finger_air_view"

    invoke-static {v0, v1, v4, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_0

    .line 237
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "pen_hovering"

    invoke-static {v0, v1, v5, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 239
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "finger_air_view"

    invoke-static {v0, v1, v5, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_0
.end method

.method private setMode(I)V
    .locals 3
    .parameter "mode"

    .prologue
    .line 246
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mIsProcessing:Z

    .line 248
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->DB_AIR_VIEW:Ljava/lang/String;

    const/4 v2, -0x2

    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 250
    sget v0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->mAirViewType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 251
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->setDBvalues(I)V

    .line 253
    :cond_0
    return-void
.end method

.method private showConfirmPopup()V
    .locals 5

    .prologue
    .line 381
    const/4 v1, 0x0

    .line 382
    .local v1, theme:I
    sget-boolean v2, Lcom/android/systemui/statusbar/BaseStatusBar;->isLightTheme:Z

    if-eqz v2, :cond_0

    .line 383
    const/4 v1, 0x5

    .line 385
    :cond_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v3, 0x1040014

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0c0155

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    new-instance v4, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton$3;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton$3;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x104

    new-instance v4, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton$2;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton$2;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->mAlertDialog:Landroid/app/AlertDialog;

    .line 414
    sget v2, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->mAirViewType:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 415
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->mAlertDialog:Landroid/app/AlertDialog;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0156

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 416
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->statusBarCollapse()V

    .line 418
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    const-string v3, "keyguard"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 419
    .local v0, kgm:Landroid/app/KeyguardManager;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 420
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d9

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 424
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 425
    return-void

    .line 422
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->mAlertDialog:Landroid/app/AlertDialog;

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
    .line 151
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->mAirViewMasterObserver:Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton$AirViewMasterObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 152
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->mMagnificationObserver:Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton$MagnificationObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 153
    sget v0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->mAirViewType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 154
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->mAirViewModeObserver:Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton$AirViewModeObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 155
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 157
    :cond_0
    return-void
.end method

.method public doNext()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 482
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->removeEnabledScreenReaderValue()V

    .line 483
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->isMagnificationEnabled:Z

    if-eqz v0, :cond_0

    .line 484
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_display_magnification_enabled"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 487
    :cond_0
    sget v0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->mAirViewType:I

    if-ne v0, v4, :cond_1

    .line 488
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->isAllFingerOptionDisabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 489
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->showConfirmPopup()V

    .line 500
    :goto_0
    return-void

    .line 492
    :cond_1
    sget v0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->mAirViewType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 493
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->isAllPenOptionsDisabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 494
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->showConfirmPopup()V

    goto :goto_0

    .line 498
    :cond_2
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->setActivateStatus(I)V

    .line 499
    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->setMode(I)V

    goto :goto_0
.end method

.method public doPrevious()V
    .locals 0

    .prologue
    .line 503
    return-void
.end method

.method public init()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x2

    .line 133
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->DB_AIR_VIEW:Ljava/lang/String;

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->mAirViewMasterObserver:Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton$AirViewMasterObserver;

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 136
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "accessibility_display_magnification_enabled"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->mMagnificationObserver:Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton$MagnificationObserver;

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 139
    sget v1, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->mAirViewType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 140
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "air_view_mode"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->mAirViewModeObserver:Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton$AirViewModeObserver;

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 144
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 145
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.samsung.pen.INSERT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 146
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 148
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method public isAllFingerOptionDisabled()Z
    .locals 13

    .prologue
    const/4 v8, 0x1

    const/4 v12, -0x2

    const/4 v9, 0x0

    .line 327
    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v11, "finger_air_view_magnifier"

    invoke-static {v10, v11, v9, v12}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    .line 328
    .local v2, magnifier:I
    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v11, "finger_air_view_information_preview"

    invoke-static {v10, v11, v9, v12}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 329
    .local v1, informationPreview:I
    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v11, "finger_air_view_pregress_bar_preview"

    invoke-static {v10, v11, v9, v12}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    .line 330
    .local v4, progressBarPreview:I
    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v11, "finger_air_view_speed_dial_tip"

    invoke-static {v10, v11, v9, v12}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    .line 331
    .local v7, speedDialTip:I
    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v11, "finger_air_view_sound_and_haptic_feedback"

    invoke-static {v10, v11, v9, v12}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    .line 332
    .local v6, soundNHapticFeedback:I
    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v11, "finger_air_view_show_up_indicator"

    invoke-static {v10, v11, v9, v12}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    .line 333
    .local v5, showUpIndicator:I
    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v11, "finger_air_view_full_text"

    invoke-static {v10, v11, v9, v12}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 334
    .local v0, fullText:I
    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v11, "finger_air_view_pointer"

    invoke-static {v10, v11, v9, v12}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    .line 335
    .local v3, pointer:I
    sget v10, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->mAirViewType:I

    const/4 v11, 0x3

    if-eq v10, v11, :cond_0

    sget-boolean v10, Lcom/android/systemui/statusbar/Feature;->isLto3wifi:Z

    if-eqz v10, :cond_3

    .line 336
    :cond_0
    const-string v10, "STATUSBAR-AirView"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "isAllFingerOptionDisabled()"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    or-int v10, v2, v1

    or-int/2addr v10, v4

    or-int/2addr v10, v7

    or-int/2addr v10, v6

    if-ge v10, v8, :cond_2

    .line 343
    :cond_1
    :goto_0
    return v8

    :cond_2
    move v8, v9

    .line 340
    goto :goto_0

    .line 342
    :cond_3
    const-string v10, "STATUSBAR-AirView"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "isAllFingerOptionDisabled()"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    or-int v10, v2, v5

    or-int/2addr v10, v1

    or-int/2addr v10, v0

    or-int/2addr v10, v3

    or-int/2addr v10, v4

    or-int/2addr v10, v7

    if-lt v10, v8, :cond_1

    move v8, v9

    goto :goto_0
.end method

.method public isAllOptionDisabled()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 312
    iget v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->mAirViewMode:I

    if-nez v1, :cond_1

    .line 313
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->isAllPenOptionsDisabled()Z

    move-result v0

    .line 322
    :cond_0
    :goto_0
    return v0

    .line 314
    :cond_1
    iget v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->mAirViewMode:I

    if-ne v1, v0, :cond_2

    .line 315
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->isAllFingerOptionDisabled()Z

    move-result v0

    goto :goto_0

    .line 316
    :cond_2
    iget v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->mAirViewMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 317
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->mPenDettachedState:Z

    if-ne v1, v0, :cond_3

    .line 318
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->isAllPenOptionsDisabled()Z

    move-result v0

    goto :goto_0

    .line 320
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->isAllFingerOptionDisabled()Z

    move-result v0

    goto :goto_0
.end method

.method public isAllPenOptionsDisabled()Z
    .locals 11

    .prologue
    const/4 v6, 0x1

    const/4 v10, -0x2

    const/4 v7, 0x0

    .line 348
    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v9, "pen_hovering_information_preview"

    invoke-static {v8, v9, v7, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 349
    .local v1, hoveringInformationPreview:I
    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v9, "pen_hovering_progress_preview"

    invoke-static {v8, v9, v7, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    .line 350
    .local v3, hoveringProgressPreview:I
    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v9, "pen_hovering_speed_dial_preview"

    invoke-static {v8, v9, v7, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    .line 351
    .local v5, hoveringSpeedDialPreview:I
    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v9, "pen_hovering_icon_label"

    invoke-static {v8, v9, v7, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 352
    .local v0, hoveringIconLabel:I
    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v9, "pen_hovering_list_scroll"

    invoke-static {v8, v9, v7, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    .line 353
    .local v2, hoveringListScroll:I
    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v9, "pen_hovering_sound"

    invoke-static {v8, v9, v7, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    .line 354
    .local v4, hoveringSoundNHapticFeedback:I
    sget v8, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->mAirViewType:I

    const/4 v9, 0x3

    if-eq v8, v9, :cond_0

    sget-boolean v8, Lcom/android/systemui/statusbar/Feature;->isLto3wifi:Z

    if-eqz v8, :cond_3

    .line 355
    :cond_0
    const-string v8, "STATUSBAR-AirView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isAllPenOptionDisabled()"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    or-int v8, v1, v3

    or-int/2addr v8, v5

    or-int/2addr v8, v0

    or-int/2addr v8, v2

    or-int/2addr v8, v4

    if-ge v8, v6, :cond_2

    .line 362
    :cond_1
    :goto_0
    return v6

    :cond_2
    move v6, v7

    .line 359
    goto :goto_0

    .line 361
    :cond_3
    const-string v8, "STATUSBAR-AirView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isAllPenOptionDisabled()"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    or-int v8, v1, v3

    or-int/2addr v8, v5

    or-int/2addr v8, v0

    or-int/2addr v8, v2

    if-lt v8, v6, :cond_1

    move v6, v7

    goto :goto_0
.end method

.method public onClick(Z)V
    .locals 6
    .parameter "state"

    .prologue
    const/4 v5, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 161
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mIsProcessing:Z

    if-eqz v0, :cond_1

    .line 162
    const-string v0, "STATUSBAR-AirView"

    const-string v1, "onClick(): Processing..."

    invoke-static {v0, v1}, Landroid/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    :cond_0
    :goto_0
    return-void

    .line 167
    :cond_1
    const-string v0, "STATUSBAR-AirView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AirView onClick("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    const-string v3, "enterprise_policy"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 171
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    .line 172
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    invoke-virtual {v0, v2}, Landroid/app/enterprise/RestrictionPolicy;->isSettingsChangesAllowed(Z)Z

    move-result v0

    if-nez v0, :cond_2

    .line 173
    const-string v0, "STATUSBAR-AirView"

    const-string v1, "onClick(): AirView mode state change is not allowed"

    invoke-static {v0, v1}, Landroid/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 178
    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->mState:Z

    if-eq v0, p1, :cond_0

    .line 180
    if-eqz p1, :cond_7

    .line 181
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->isEnabledScreenReaderService()Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->isMagnificationEnabled:Z

    if-eqz v0, :cond_4

    .line 182
    :cond_3
    const v0, 0x7f0c00f1

    const v1, 0x7f0c00f2

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->showTalkBackDisablePopup(II)V

    goto :goto_0

    .line 186
    :cond_4
    sget v0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->mAirViewType:I

    if-ne v0, v1, :cond_5

    .line 187
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->isAllFingerOptionDisabled()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 188
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->showConfirmPopup()V

    goto :goto_0

    .line 191
    :cond_5
    sget v0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->mAirViewType:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_6

    .line 192
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->isAllPenOptionsDisabled()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 193
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->showConfirmPopup()V

    goto :goto_0

    .line 196
    :cond_6
    sget v0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->mAirViewType:I

    if-ne v0, v5, :cond_7

    .line 197
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->isAllOptionDisabled()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 198
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->showConfirmPopup()V

    goto/16 :goto_0

    .line 205
    :cond_7
    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->setActivateStatus(I)V

    .line 206
    if-eqz p1, :cond_8

    move v0, v1

    :goto_1
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->setMode(I)V

    goto/16 :goto_0

    :cond_8
    move v0, v2

    goto :goto_1
.end method

.method public onLongClick()V
    .locals 2

    .prologue
    .line 368
    sget v0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->mAirViewType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 369
    const-string v0, "com.android.settings"

    const-string v1, "com.android.settings.Settings$FingerAirViewSettingActivity"

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->callActivity(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    :cond_0
    :goto_0
    return-void

    .line 371
    :cond_1
    sget v0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->mAirViewType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 372
    const-string v0, "com.android.settings"

    const-string v1, "com.android.settings.Settings$PenAirViewSettingsMenuActivity"

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->callActivity(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 374
    :cond_2
    sget v0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->mAirViewType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 375
    const-string v0, "com.android.settings"

    const-string v1, "com.android.settings.Settings$AirViewSettingActivity"

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->callActivity(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected showTalkBackDisablePopup(II)V
    .locals 6
    .parameter "titleRes"
    .parameter "messageRes"

    .prologue
    .line 429
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 430
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->cancel()V

    .line 432
    :cond_0
    const/4 v2, 0x0

    .line 433
    .local v2, theme:I
    sget-boolean v3, Lcom/android/systemui/statusbar/BaseStatusBar;->isLightTheme:Z

    if-eqz v3, :cond_1

    .line 434
    const/4 v2, 0x5

    .line 437
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0172

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0173

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 441
    .local v1, popupMsg:Ljava/lang/String;
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v3, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x1010355

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x104000a

    new-instance v5, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton$6;

    invoke-direct {v5, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton$6;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/high16 v4, 0x104

    new-instance v5, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton$5;

    invoke-direct {v5, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton$5;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton$4;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton$4;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->mAlertDialog:Landroid/app/AlertDialog;

    .line 470
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    const-string v4, "keyguard"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 471
    .local v0, kgm:Landroid/app/KeyguardManager;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 472
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7d9

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    .line 476
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 478
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->statusBarCollapse()V

    .line 479
    return-void

    .line 474
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7d8

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    goto :goto_0
.end method

.method public userSwitched()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 509
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->mAirViewMasterObserver:Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton$AirViewMasterObserver;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton$AirViewMasterObserver;->onChange(Z)V

    .line 510
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->mMagnificationObserver:Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton$MagnificationObserver;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton$MagnificationObserver;->onChange(Z)V

    .line 511
    sget v0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->mAirViewType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 512
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->mAirViewModeObserver:Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton$AirViewModeObserver;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton$AirViewModeObserver;->onChange(Z)V

    .line 514
    :cond_0
    return-void
.end method
