.class public Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;
.super Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;
.source "AirplaneModeQuickSettingButton.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;


# static fields
.field private static final TW_TAG:Ljava/lang/String; = "STATUSBAR-AirplaneModeQuickSettingButton"


# instance fields
.field private mAirplaneMode:Z

.field mAlertDialog:Landroid/app/AlertDialog;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsTurningOff:Z

.field private mIsTurningOn:Z

.field private mIsWaitingForEcmExit:Z

.field mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

.field mUsbManager:Landroid/hardware/usb/UsbManager;

.field telephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 9
    .parameter "context"

    .prologue
    const/4 v7, 0x0

    .line 146
    const/4 v2, 0x0

    const v3, 0x7f0c00dc

    const v4, 0x7f0201a9

    const v5, 0x7f0201a8

    const v6, 0x7f0201a7

    move-object v0, p0

    move-object v1, p1

    move v8, v7

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIIIII)V

    .line 64
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;->mIsTurningOn:Z

    .line 65
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;->mIsTurningOff:Z

    .line 68
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;->mIsWaitingForEcmExit:Z

    .line 79
    new-instance v0, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton$1;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 118
    new-instance v0, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton$2;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 153
    invoke-virtual {p0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;->setListener(Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;)V

    .line 155
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;->getAirplaneMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;->mAirplaneMode:Z

    .line 156
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;->mAirplaneMode:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;->setActivateStatus(I)V

    .line 158
    return-void

    .line 156
    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;->mAirplaneMode:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;->mAirplaneMode:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;->mIsTurningOn:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;->mIsTurningOn:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;->mIsTurningOff:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;->mIsTurningOff:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;->mIsWaitingForEcmExit:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;->mIsWaitingForEcmExit:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;->unsafe(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;->getAirplaneMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;->setAirplaneMode(Z)V

    return-void
.end method

.method private getAirplaneMode()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 161
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 162
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v4, "STATUSBAR-AirplaneModeQuickSettingButton"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getAirplaneMode() : "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v1, "airplane_mode_on"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    const-string v1, "airplane_mode_on"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1

    :goto_1
    return v2

    :cond_0
    move v1, v3

    .line 162
    goto :goto_0

    :cond_1
    move v2, v3

    .line 163
    goto :goto_1
.end method

.method private setAirplaneMode(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 316
    const-string v1, "ril.cdma.inecmmode"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 317
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;->mIsWaitingForEcmExit:Z

    .line 319
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_SHOW_NOTICE_ECM_BLOCK_OTHERS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 321
    .local v0, ecmDialogIntent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 322
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 326
    .end local v0           #ecmDialogIntent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 324
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;->unsafe(Z)V

    goto :goto_0
.end method

.method private showConfirmPopup(Z)V
    .locals 8
    .parameter "state"

    .prologue
    const v5, 0x10401e0

    .line 227
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 228
    .local v4, value:Z
    const/4 v0, 0x0

    .line 230
    .local v0, isVzwUsb30Popup:Z
    if-eqz p1, :cond_2

    const v3, 0x10401db

    .line 235
    .local v3, resTitle:I
    :goto_0
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_BT_EnableSeparateSettingWithAirplainMode"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 237
    if-eqz p1, :cond_3

    const v2, 0x10401de

    .line 243
    .local v2, resMsg:I
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;->isVoiceCapable()Z

    move-result v6

    if-nez v6, :cond_0

    .line 244
    if-eqz p1, :cond_6

    const v2, 0x7f0c016a

    .line 248
    :cond_0
    :goto_2
    sget-boolean v5, Lcom/android/systemui/statusbar/Feature;->mUsb3PopupForVZW:Z

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;->mUsbManager:Landroid/hardware/usb/UsbManager;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v5}, Landroid/hardware/usb/UsbManager;->isUsb30Available()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v5}, Landroid/hardware/usb/UsbManager;->isUsb30Enabled()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;->getAirplaneMode()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 250
    const v3, 0x7f0c0178

    .line 251
    const v2, 0x7f0c0177

    .line 252
    const/4 v0, 0x1

    .line 254
    :cond_1
    new-instance v5, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    if-eqz v0, :cond_7

    const v5, 0x7f0c0179

    :goto_3
    new-instance v7, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton$4;

    invoke-direct {v7, p0, v4}, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton$4;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;Z)V

    invoke-virtual {v6, v5, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const/high16 v6, 0x104

    new-instance v7, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton$3;

    invoke-direct {v7, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton$3;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;->mAlertDialog:Landroid/app/AlertDialog;

    .line 294
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;->mAlertDialog:Landroid/app/AlertDialog;

    new-instance v6, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton$5;

    invoke-direct {v6, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton$5;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;)V

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 302
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;->statusBarCollapse()V

    .line 304
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    const-string v6, "keyguard"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    .line 305
    .local v1, kgm:Landroid/app/KeyguardManager;
    if-eqz v1, :cond_8

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 306
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v6, 0x7d9

    invoke-virtual {v5, v6}, Landroid/view/Window;->setType(I)V

    .line 310
    :goto_4
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    .line 311
    return-void

    .line 230
    .end local v1           #kgm:Landroid/app/KeyguardManager;
    .end local v2           #resMsg:I
    .end local v3           #resTitle:I
    :cond_2
    const v3, 0x10401da

    goto/16 :goto_0

    .restart local v3       #resTitle:I
    :cond_3
    move v2, v5

    .line 237
    goto/16 :goto_1

    .line 240
    :cond_4
    if-eqz p1, :cond_5

    const v2, 0x10401df

    .restart local v2       #resMsg:I
    :goto_5
    goto/16 :goto_1

    .end local v2           #resMsg:I
    :cond_5
    move v2, v5

    goto :goto_5

    .restart local v2       #resMsg:I
    :cond_6
    move v2, v5

    .line 244
    goto/16 :goto_2

    .line 254
    :cond_7
    const v5, 0x104000a

    goto :goto_3

    .line 308
    .restart local v1       #kgm:Landroid/app/KeyguardManager;
    :cond_8
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v6, 0x7d8

    invoke-virtual {v5, v6}, Landroid/view/Window;->setType(I)V

    goto :goto_4
.end method

.method private unsafe(Z)V
    .locals 5
    .parameter "enabled"

    .prologue
    .line 329
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "airplane_mode_on"

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 335
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_IMS_EnableVoLTE"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz p1, :cond_1

    .line 336
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 337
    .local v0, handler:Landroid/os/Handler;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 338
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "com.sec.android.internal.ims.FLIGHT_MODE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 339
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 341
    new-instance v2, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton$6;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton$6;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;)V

    const-wide/16 v3, 0x3e8

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 360
    .end local v0           #handler:Landroid/os/Handler;
    .end local v1           #intent:Landroid/content/Intent;
    :goto_1
    return-void

    .line 329
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 350
    :cond_1
    new-instance v2, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton$7;

    invoke-direct {v2, p0, p1}, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton$7;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;Z)V

    invoke-static {v2}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    goto :goto_1
.end method


# virtual methods
.method public deinit()V
    .locals 2

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 192
    return-void
.end method

.method public init()V
    .locals 4

    .prologue
    .line 167
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 168
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 169
    const-string v1, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 170
    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 172
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 174
    sget-boolean v1, Lcom/android/systemui/statusbar/BaseStatusBar;->isNetworkSupported:Z

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mUseServiceStateForAirplane:Z

    if-eqz v1, :cond_0

    .line 176
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;->telephonyManager:Landroid/telephony/TelephonyManager;

    .line 182
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;->telephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 185
    :cond_0
    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mUsb3PopupForVZW:Z

    if-eqz v1, :cond_1

    .line 186
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    const-string v2, "usb"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/usb/UsbManager;

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;->mUsbManager:Landroid/hardware/usb/UsbManager;

    .line 188
    :cond_1
    return-void
.end method

.method public isVoiceCapable()Z
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;->telephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Z)V
    .locals 3
    .parameter "state"

    .prologue
    .line 195
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mIsProcessing:Z

    if-eqz v0, :cond_0

    .line 196
    const-string v0, "STATUSBAR-AirplaneModeQuickSettingButton"

    const-string v1, "onClick(): Processing... return"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    :goto_0
    return-void

    .line 200
    :cond_0
    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;->mIsTurningOn:Z

    if-eqz v0, :cond_1

    .line 201
    const-string v0, "STATUSBAR-AirplaneModeQuickSettingButton"

    const-string v1, "onClick(): Processing... TurningOn"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 204
    :cond_1
    if-nez p1, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;->mIsTurningOff:Z

    if-eqz v0, :cond_2

    .line 205
    const-string v0, "STATUSBAR-AirplaneModeQuickSettingButton"

    const-string v1, "onClick(): Processing... TurningOff"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 210
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 211
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    .line 212
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/enterprise/RestrictionPolicy;->isSettingsChangesAllowed(Z)Z

    move-result v0

    if-nez v0, :cond_3

    .line 213
    const-string v0, "STATUSBAR-AirplaneModeQuickSettingButton"

    const-string v1, "onClick(): AirplaneMode state change is not allowed by EDM"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 218
    :cond_3
    const-string v0, "STATUSBAR-AirplaneModeQuickSettingButton"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;->setActivateStatus(I)V

    .line 221
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;->showConfirmPopup(Z)V

    goto :goto_0
.end method

.method public onLongClick()V
    .locals 2

    .prologue
    .line 364
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mAirplaneSettingLaunch:Z

    if-eqz v0, :cond_0

    .line 365
    const-string v0, "com.android.settings"

    const-string v1, "com.android.settings.Settings"

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;->callActivity(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    :goto_0
    return-void

    .line 367
    :cond_0
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mJumpToAir1depthForVZW:Z

    if-nez v0, :cond_1

    .line 368
    const-string v0, "com.android.settings"

    const-string v1, "com.android.settings.Settings$WirelessSettingsActivity"

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;->callActivity(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 371
    :cond_1
    const-string v0, "com.android.settings"

    const-string v1, "com.android.settings.SettingsTabActivity"

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;->callActivity(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
