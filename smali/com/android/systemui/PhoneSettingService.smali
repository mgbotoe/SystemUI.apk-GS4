.class public Lcom/android/systemui/PhoneSettingService;
.super Landroid/app/Service;
.source "PhoneSettingService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/PhoneSettingService$2;,
        Lcom/android/systemui/PhoneSettingService$SettingMode;
    }
.end annotation


# static fields
.field private static final DB_DRIVING_MODE_ON:Ljava/lang/String; = "driving_mode_on"

.field private static final DB_MULTI_WINDOW_MODE_ON:Ljava/lang/String; = "multi_window_enabled"

.field private static final DB_SMART_STAY_ON:Ljava/lang/String; = "intelligent_sleep_mode"

.field private static final DB_S_BEAM_ON:Ljava/lang/String; = "sbeam_mode"

.field private static final PHONE_SETTING:Ljava/lang/String; = "android.intent.action.PHONE_SETTING"

.field private static final START_WFD_DIALOG:I = 0x1

.field static final TAG:Ljava/lang/String; = "PhoneSettingService"

.field private static final WIFI_AP_SAVED_STATE:Ljava/lang/String; = "wifi_ap_saved_state"

.field private static final WIFI_SAVED_STATE:Ljava/lang/String; = "wifi_saved_state"


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field public mHandler:Landroid/os/Handler;

.field private mWifiEnabled:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 483
    new-instance v0, Lcom/android/systemui/PhoneSettingService$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/PhoneSettingService$1;-><init>(Lcom/android/systemui/PhoneSettingService;)V

    iput-object v0, p0, Lcom/android/systemui/PhoneSettingService;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/PhoneSettingService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/systemui/PhoneSettingService;->startWfdPickerDialog()V

    return-void
.end method

.method private changePhoneSetting(Lcom/android/systemui/PhoneSettingService$SettingMode;Z)V
    .locals 2
    .parameter "mode"
    .parameter "enabled"

    .prologue
    .line 153
    sget-object v0, Lcom/android/systemui/PhoneSettingService$2;->$SwitchMap$com$android$systemui$PhoneSettingService$SettingMode:[I

    invoke-virtual {p1}, Lcom/android/systemui/PhoneSettingService$SettingMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 204
    :goto_0
    return-void

    .line 155
    :pswitch_0
    invoke-direct {p0, p2}, Lcom/android/systemui/PhoneSettingService;->setAutoRotateMode(Z)V

    goto :goto_0

    .line 158
    :pswitch_1
    invoke-direct {p0, p2}, Lcom/android/systemui/PhoneSettingService;->setBluetoothMode(Z)V

    goto :goto_0

    .line 161
    :pswitch_2
    invoke-direct {p0, p2}, Lcom/android/systemui/PhoneSettingService;->setLocationMode(Z)V

    goto :goto_0

    .line 164
    :pswitch_3
    invoke-direct {p0, p2}, Lcom/android/systemui/PhoneSettingService;->setMobileDataMode(Z)V

    goto :goto_0

    .line 167
    :pswitch_4
    invoke-direct {p0, p2}, Lcom/android/systemui/PhoneSettingService;->setPowerSavingMode(Z)V

    goto :goto_0

    .line 170
    :pswitch_5
    invoke-direct {p0, p2}, Lcom/android/systemui/PhoneSettingService;->setMultiWindowMode(Z)V

    goto :goto_0

    .line 173
    :pswitch_6
    invoke-direct {p0, p2}, Lcom/android/systemui/PhoneSettingService;->setSyncMode(Z)V

    goto :goto_0

    .line 176
    :pswitch_7
    invoke-direct {p0, p2}, Lcom/android/systemui/PhoneSettingService;->setWifiMode(Z)V

    goto :goto_0

    .line 179
    :pswitch_8
    invoke-direct {p0, p2}, Lcom/android/systemui/PhoneSettingService;->setDormantMode(Z)V

    goto :goto_0

    .line 182
    :pswitch_9
    invoke-direct {p0, p2}, Lcom/android/systemui/PhoneSettingService;->setAllShareCastMode(Z)V

    goto :goto_0

    .line 185
    :pswitch_a
    invoke-direct {p0, p2}, Lcom/android/systemui/PhoneSettingService;->setSBeamMode(Z)V

    goto :goto_0

    .line 188
    :pswitch_b
    invoke-direct {p0, p2}, Lcom/android/systemui/PhoneSettingService;->setNfcMode(Z)V

    goto :goto_0

    .line 191
    :pswitch_c
    invoke-direct {p0, p2}, Lcom/android/systemui/PhoneSettingService;->setDrivingMode(Z)V

    goto :goto_0

    .line 194
    :pswitch_d
    invoke-direct {p0, p2}, Lcom/android/systemui/PhoneSettingService;->setSmartStayMode(Z)V

    goto :goto_0

    .line 197
    :pswitch_e
    invoke-direct {p0, p2}, Lcom/android/systemui/PhoneSettingService;->setAirplaneMode(Z)V

    goto :goto_0

    .line 200
    :pswitch_f
    invoke-direct {p0, p2}, Lcom/android/systemui/PhoneSettingService;->setWiFiHotspotMode(Z)V

    goto :goto_0

    .line 153
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method

.method private setAirplaneMode(Z)V
    .locals 7
    .parameter "enabled"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 437
    iget-object v4, p0, Lcom/android/systemui/PhoneSettingService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "airplane_mode_on"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_1

    move v1, v2

    .line 439
    .local v1, mode:Z
    :goto_0
    const-string v4, "PhoneSettingService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setAirplaneMode : mode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " enabled = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    const-string v4, "ril.cdma.inecmmode"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 442
    const-string v2, "PhoneSettingService"

    const-string v3, "setAirplaneMode : ECM exit"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    :cond_0
    :goto_1
    return-void

    .end local v1           #mode:Z
    :cond_1
    move v1, v3

    .line 437
    goto :goto_0

    .line 446
    .restart local v1       #mode:Z
    :cond_2
    if-eq v1, p1, :cond_0

    .line 447
    iget-object v4, p0, Lcom/android/systemui/PhoneSettingService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "airplane_mode_on"

    if-eqz p1, :cond_3

    :goto_2
    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 449
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 450
    .local v0, intent:Landroid/content/Intent;
    const/high16 v2, 0x2000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 451
    const-string v2, "state"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 452
    iget-object v2, p0, Lcom/android/systemui/PhoneSettingService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    .end local v0           #intent:Landroid/content/Intent;
    :cond_3
    move v3, v2

    .line 447
    goto :goto_2
.end method

.method private setAllShareCastMode(Z)V
    .locals 6
    .parameter "enabled"

    .prologue
    .line 325
    const-string v3, "PhoneSettingService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setAllShareCastMode : enabled = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    const/4 v0, 0x0

    .line 328
    .local v0, connected:Z
    iget-object v3, p0, Lcom/android/systemui/PhoneSettingService;->mContext:Landroid/content/Context;

    const-string v4, "wfd"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/wfd/WfdManager;

    .line 329
    .local v2, wfdManager:Lcom/samsung/wfd/WfdManager;
    if-eqz v2, :cond_0

    .line 330
    invoke-virtual {v2}, Lcom/samsung/wfd/WfdManager;->getWfdState()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 338
    const-string v3, "PhoneSettingService"

    const-string v4, "setAllShareCastMode : disconnected"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    const/4 v0, 0x0

    .line 344
    :cond_0
    :goto_0
    if-eqz p1, :cond_3

    .line 345
    iget-boolean v3, p0, Lcom/android/systemui/PhoneSettingService;->mWifiEnabled:Z

    if-eqz v3, :cond_2

    .line 346
    iget-object v3, p0, Lcom/android/systemui/PhoneSettingService;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 347
    .local v1, msg:Landroid/os/Message;
    iget-object v3, p0, Lcom/android/systemui/PhoneSettingService;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x1388

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 355
    .end local v1           #msg:Landroid/os/Message;
    :cond_1
    :goto_1
    return-void

    .line 334
    :pswitch_0
    const-string v3, "PhoneSettingService"

    const-string v4, "setAllShareCastMode : connected"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    const/4 v0, 0x1

    .line 336
    goto :goto_0

    .line 349
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/PhoneSettingService;->startWfdPickerDialog()V

    goto :goto_1

    .line 352
    :cond_3
    if-eqz v0, :cond_1

    .line 353
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/wfd/WfdManager;->setWfdEnabledDialog(Z)Z

    goto :goto_1

    .line 330
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private setAutoRotateMode(Z)V
    .locals 6
    .parameter "enabled"

    .prologue
    const/4 v1, 0x0

    .line 207
    iget-object v3, p0, Lcom/android/systemui/PhoneSettingService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "accelerometer_rotation"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_1

    .line 209
    .local v1, mode:Z
    :goto_0
    const-string v3, "PhoneSettingService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setAutoRotateMode : mode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " enabled = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    if-eq v1, p1, :cond_0

    .line 212
    :try_start_0
    const-string v3, "window"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v2

    .line 213
    .local v2, wm:Landroid/view/IWindowManager;
    if-eqz p1, :cond_2

    .line 214
    invoke-interface {v2}, Landroid/view/IWindowManager;->thawRotation()V

    .line 222
    .end local v2           #wm:Landroid/view/IWindowManager;
    :cond_0
    :goto_1
    return-void

    .line 207
    .end local v1           #mode:Z
    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    .line 216
    .restart local v1       #mode:Z
    .restart local v2       #wm:Landroid/view/IWindowManager;
    :cond_2
    const/4 v3, -0x1

    invoke-interface {v2, v3}, Landroid/view/IWindowManager;->freezeRotation(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 218
    .end local v2           #wm:Landroid/view/IWindowManager;
    :catch_0
    move-exception v0

    .line 219
    .local v0, exc:Landroid/os/RemoteException;
    const-string v3, "PhoneSettingService"

    const-string v4, "Unable to save auto-rotate setting"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private setBluetoothMode(Z)V
    .locals 4
    .parameter "enabled"

    .prologue
    .line 225
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 226
    .local v0, bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_0

    .line 227
    const-string v1, "PhoneSettingService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setBluetoothMode : enabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    if-eqz p1, :cond_1

    .line 229
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 230
    iget-object v1, p0, Lcom/android/systemui/PhoneSettingService;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.systemui.statusbar.action.BLUETOOTH_ON"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 236
    :cond_0
    :goto_0
    return-void

    .line 233
    :cond_1
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    goto :goto_0
.end method

.method private setDormantMode(Z)V
    .locals 6
    .parameter "enabled"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 314
    iget-object v3, p0, Lcom/android/systemui/PhoneSettingService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "dormant_switch_onoff"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_1

    move v0, v1

    .line 316
    .local v0, mode:Z
    :goto_0
    const-string v3, "PhoneSettingService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setDormantMode : mode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " enabled = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    if-eq v0, p1, :cond_0

    .line 318
    iget-object v3, p0, Lcom/android/systemui/PhoneSettingService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "dormant_switch_onoff"

    if-eqz p1, :cond_2

    :goto_1
    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 320
    iget-object v1, p0, Lcom/android/systemui/PhoneSettingService;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.settings.DORMANTMODE_SWITCH_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 322
    :cond_0
    return-void

    .end local v0           #mode:Z
    :cond_1
    move v0, v2

    .line 314
    goto :goto_0

    .restart local v0       #mode:Z
    :cond_2
    move v2, v1

    .line 318
    goto :goto_1
.end method

.method private setDrivingMode(Z)V
    .locals 6
    .parameter "enabled"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 417
    iget-object v3, p0, Lcom/android/systemui/PhoneSettingService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "driving_mode_on"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_1

    move v0, v1

    .line 419
    .local v0, mode:Z
    :goto_0
    const-string v3, "PhoneSettingService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setDrivingMode : mode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " enabled = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    if-eq v0, p1, :cond_0

    .line 421
    iget-object v3, p0, Lcom/android/systemui/PhoneSettingService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "driving_mode_on"

    if-eqz p1, :cond_2

    :goto_1
    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 424
    :cond_0
    return-void

    .end local v0           #mode:Z
    :cond_1
    move v0, v2

    .line 417
    goto :goto_0

    .restart local v0       #mode:Z
    :cond_2
    move v2, v1

    .line 421
    goto :goto_1
.end method

.method private setLocationMode(Z)V
    .locals 5
    .parameter "enabled"

    .prologue
    .line 239
    iget-object v2, p0, Lcom/android/systemui/PhoneSettingService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "gps"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v1

    .line 241
    .local v1, mode:Z
    const-string v2, "PhoneSettingService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setLocationMode : mode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " enabled = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    if-eq v1, p1, :cond_0

    .line 243
    iget-object v2, p0, Lcom/android/systemui/PhoneSettingService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "gps"

    invoke-static {v2, v3, p1}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 245
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.settings.GPS_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 246
    .local v0, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/systemui/PhoneSettingService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 248
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private setMobileDataMode(Z)V
    .locals 7
    .parameter "enabled"

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x1

    .line 251
    iget-object v5, p0, Lcom/android/systemui/PhoneSettingService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v6, "airplane_mode_on"

    invoke-static {v5, v6, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-nez v5, :cond_1

    .line 253
    .local v0, airplaneMode:Z
    :goto_0
    if-ne v0, v4, :cond_2

    .line 254
    const-string v4, "PhoneSettingService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setMobileDataMode : airplaneMode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    :cond_0
    :goto_1
    return-void

    .end local v0           #airplaneMode:Z
    :cond_1
    move v0, v4

    .line 251
    goto :goto_0

    .line 258
    .restart local v0       #airplaneMode:Z
    :cond_2
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v3

    .line 259
    .local v3, simState:I
    if-eqz v3, :cond_3

    if-ne v3, v4, :cond_4

    .line 260
    :cond_3
    const-string v4, "PhoneSettingService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setMobileDataMode : simState = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 264
    :cond_4
    iget-object v4, p0, Lcom/android/systemui/PhoneSettingService;->mContext:Landroid/content/Context;

    const-string v5, "connectivity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 266
    .local v1, connectivityManager:Landroid/net/ConnectivityManager;
    if-eqz v1, :cond_0

    .line 267
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v2

    .line 268
    .local v2, mode:Z
    const-string v4, "PhoneSettingService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setMobileDataMode : mode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " enabled = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    if-eq v2, p1, :cond_0

    .line 270
    invoke-virtual {v1, p1}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    goto :goto_1
.end method

.method private setMultiWindowMode(Z)V
    .locals 6
    .parameter "enabled"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 358
    iget-object v3, p0, Lcom/android/systemui/PhoneSettingService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "multi_window_enabled"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_1

    move v0, v1

    .line 360
    .local v0, mode:Z
    :goto_0
    const-string v3, "PhoneSettingService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setMultiWindowMode : mode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " enabled = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    if-eq v0, p1, :cond_0

    .line 362
    iget-object v3, p0, Lcom/android/systemui/PhoneSettingService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "multi_window_enabled"

    if-eqz p1, :cond_2

    :goto_1
    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 365
    :cond_0
    return-void

    .end local v0           #mode:Z
    :cond_1
    move v0, v2

    .line 358
    goto :goto_0

    .restart local v0       #mode:Z
    :cond_2
    move v2, v1

    .line 362
    goto :goto_1
.end method

.method private setNfcMode(Z)V
    .locals 5
    .parameter "enabled"

    .prologue
    .line 379
    const-string v2, "PhoneSettingService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setNfcMode : enabled = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    const-string v2, "nfc"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    if-nez v2, :cond_0

    .line 382
    const-string v2, "PhoneSettingService"

    const-string v3, "NFC Service is not ready"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    :goto_0
    return-void

    .line 386
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/PhoneSettingService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    .line 387
    .local v0, nfcAdapter:Landroid/nfc/NfcAdapter;
    if-nez v0, :cond_1

    .line 388
    const-string v2, "PhoneSettingService"

    const-string v3, "nfcAdapter is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 392
    :cond_1
    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v1

    .line 394
    .local v1, nfcState:I
    if-eqz p1, :cond_4

    .line 395
    const-string v2, "PhoneSettingService"

    const-string v3, "NFC activate()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 398
    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->enable()Z

    goto :goto_0

    .line 399
    :cond_2
    const/4 v2, 0x5

    if-ne v1, v2, :cond_3

    .line 400
    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->readerEnable()Z

    goto :goto_0

    .line 402
    :cond_3
    const-string v2, "PhoneSettingService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid NFC state : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 405
    :cond_4
    const-string v2, "PhoneSettingService"

    const-string v3, "NFC deactivate()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    const/4 v2, 0x3

    if-ne v1, v2, :cond_6

    .line 407
    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isNdefPushEnabled()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 408
    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->disableNdefPush()Z

    .line 409
    :cond_5
    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->readerDisable()Z

    goto :goto_0

    .line 411
    :cond_6
    const-string v2, "PhoneSettingService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid NFC state : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setPowerSavingMode(Z)V
    .locals 4
    .parameter "enabled"

    .prologue
    .line 276
    const-string v1, "PhoneSettingService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPowerSavingMode : enabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    iget-object v2, p0, Lcom/android/systemui/PhoneSettingService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "psm_switch"

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 278
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.POWERSAVING_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 279
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/systemui/PhoneSettingService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 280
    return-void

    .line 277
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setSBeamMode(Z)V
    .locals 5
    .parameter "enabled"

    .prologue
    const/4 v1, 0x0

    .line 368
    iget-object v2, p0, Lcom/android/systemui/PhoneSettingService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "sbeam_mode"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_1

    .line 370
    .local v1, mode:Z
    :goto_0
    const-string v2, "PhoneSettingService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setSBeamMode : mode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " enabled = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    if-eq v1, p1, :cond_0

    .line 372
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.settings.action.SBEAM_STATE_UPDATED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 373
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "turn_on"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 374
    iget-object v2, p0, Lcom/android/systemui/PhoneSettingService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 376
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void

    .line 368
    .end local v1           #mode:Z
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private setSilentMode(I)V
    .locals 4
    .parameter "mode"

    .prologue
    .line 283
    const-string v1, "PhoneSettingService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSilentMode : mode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    iget-object v1, p0, Lcom/android/systemui/PhoneSettingService;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 285
    .local v0, audioManager:Landroid/media/AudioManager;
    packed-switch p1, :pswitch_data_0

    .line 296
    :goto_0
    return-void

    .line 287
    :pswitch_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_0

    .line 290
    :pswitch_1
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_0

    .line 293
    :pswitch_2
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_0

    .line 285
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private setSmartStayMode(Z)V
    .locals 6
    .parameter "enabled"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 427
    iget-object v3, p0, Lcom/android/systemui/PhoneSettingService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "intelligent_sleep_mode"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_1

    move v0, v1

    .line 429
    .local v0, mode:Z
    :goto_0
    const-string v3, "PhoneSettingService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setSmartStayMode : mode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " enabled = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    if-eq v0, p1, :cond_0

    .line 431
    iget-object v3, p0, Lcom/android/systemui/PhoneSettingService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "intelligent_sleep_mode"

    if-eqz p1, :cond_2

    :goto_1
    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 434
    :cond_0
    return-void

    .end local v0           #mode:Z
    :cond_1
    move v0, v2

    .line 427
    goto :goto_0

    .restart local v0       #mode:Z
    :cond_2
    move v2, v1

    .line 431
    goto :goto_1
.end method

.method private setSyncMode(Z)V
    .locals 4
    .parameter "enabled"

    .prologue
    .line 299
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v0

    .line 300
    .local v0, mode:Z
    const-string v1, "PhoneSettingService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSyncMode : mode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " enabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    if-eq v0, p1, :cond_0

    .line 302
    invoke-static {p1}, Landroid/content/ContentResolver;->setMasterSyncAutomatically(Z)V

    .line 304
    :cond_0
    return-void
.end method

.method private setWiFiHotspotMode(Z)V
    .locals 9
    .parameter "enabled"

    .prologue
    const/4 v8, -0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 457
    const-string v5, "PhoneSettingService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setWiFiHotspotMode enabled : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    if-ne p1, v3, :cond_1

    move v0, v3

    .line 459
    .local v0, mode:I
    :goto_0
    iget-object v5, p0, Lcom/android/systemui/PhoneSettingService;->mContext:Landroid/content/Context;

    const-string v6, "wifi"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 460
    .local v1, wifiManager:Landroid/net/wifi/WifiManager;
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v2

    .line 462
    .local v2, wifiState:I
    if-ne v0, v3, :cond_2

    const/4 v5, 0x2

    if-eq v2, v5, :cond_0

    const/4 v5, 0x3

    if-ne v2, v5, :cond_2

    .line 464
    :cond_0
    invoke-virtual {v1, v4}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 465
    iget-object v3, p0, Lcom/android/systemui/PhoneSettingService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wifi_saved_state"

    invoke-static {v3, v4, v0, v8}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 467
    iget-object v3, p0, Lcom/android/systemui/PhoneSettingService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wifi_ap_saved_state"

    invoke-static {v3, v4, v0, v8}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 473
    :goto_1
    return-void

    .end local v0           #mode:I
    .end local v1           #wifiManager:Landroid/net/wifi/WifiManager;
    .end local v2           #wifiState:I
    :cond_1
    move v0, v4

    .line 458
    goto :goto_0

    .line 470
    .restart local v0       #mode:I
    .restart local v1       #wifiManager:Landroid/net/wifi/WifiManager;
    .restart local v2       #wifiState:I
    :cond_2
    const/4 v5, 0x0

    if-ne v0, v3, :cond_3

    :goto_2
    invoke-virtual {v1, v5, v3}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    goto :goto_1

    :cond_3
    move v3, v4

    goto :goto_2
.end method

.method private setWifiMode(Z)V
    .locals 4
    .parameter "enabled"

    .prologue
    .line 307
    const-string v1, "PhoneSettingService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setWifiMode : enabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    iget-object v1, p0, Lcom/android/systemui/PhoneSettingService;->mContext:Landroid/content/Context;

    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 309
    .local v0, wifiManager:Landroid/net/wifi/WifiManager;
    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 310
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/PhoneSettingService;->mWifiEnabled:Z

    .line 311
    return-void
.end method

.method private startWfdPickerDialog()V
    .locals 3

    .prologue
    .line 476
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.wfd.LAUNCH_WFD_PICKER_DLG"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 477
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "show_dialog_once"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 478
    const-string v1, "tag_write_if_success"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 479
    const/high16 v1, 0x1080

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 480
    iget-object v1, p0, Lcom/android/systemui/PhoneSettingService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 481
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 87
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 79
    const-string v0, "PhoneSettingService"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 2
    .parameter "intent"
    .parameter "startId"

    .prologue
    .line 73
    const-string v0, "PhoneSettingService"

    const-string v1, "onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 75
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 14
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 92
    const-string v11, "PhoneSettingService"

    const-string v12, "onStartCommand"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    invoke-virtual {p0}, Lcom/android/systemui/PhoneSettingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    iput-object v11, p0, Lcom/android/systemui/PhoneSettingService;->mContext:Landroid/content/Context;

    .line 95
    iget-object v11, p0, Lcom/android/systemui/PhoneSettingService;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    iput-object v11, p0, Lcom/android/systemui/PhoneSettingService;->mContentResolver:Landroid/content/ContentResolver;

    .line 98
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/systemui/PhoneSettingService;->mWifiEnabled:Z

    .line 100
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    const-string v12, "android.intent.action.PHONE_SETTING"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 101
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 102
    .local v3, extra:Landroid/os/Bundle;
    if-eqz v3, :cond_0

    .line 103
    const-string v11, "setting_value"

    invoke-virtual {v3, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 104
    .local v9, phoneSetting:Ljava/lang/String;
    const-string v11, "PhoneSettingService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "onStartCommand : phonesetting = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    const/4 v2, 0x0

    .line 110
    .local v2, enabled:Z
    invoke-static {}, Lcom/android/systemui/PhoneSettingService$SettingMode;->values()[Lcom/android/systemui/PhoneSettingService$SettingMode;

    move-result-object v1

    .local v1, arr$:[Lcom/android/systemui/PhoneSettingService$SettingMode;
    array-length v6, v1

    .local v6, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v6, :cond_0

    aget-object v10, v1, v4

    .line 111
    .local v10, s:Lcom/android/systemui/PhoneSettingService$SettingMode;
    invoke-virtual {v10}, Lcom/android/systemui/PhoneSettingService$SettingMode;->ordinal()I

    move-result v5

    .line 113
    .local v5, index:I
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v11

    if-lt v5, v11, :cond_1

    .line 149
    .end local v1           #arr$:[Lcom/android/systemui/PhoneSettingService$SettingMode;
    .end local v2           #enabled:Z
    .end local v3           #extra:Landroid/os/Bundle;
    .end local v4           #i$:I
    .end local v5           #index:I
    .end local v6           #len$:I
    .end local v9           #phoneSetting:Ljava/lang/String;
    .end local v10           #s:Lcom/android/systemui/PhoneSettingService$SettingMode;
    :cond_0
    const/4 v11, 0x2

    return v11

    .line 116
    .restart local v1       #arr$:[Lcom/android/systemui/PhoneSettingService$SettingMode;
    .restart local v2       #enabled:Z
    .restart local v3       #extra:Landroid/os/Bundle;
    .restart local v4       #i$:I
    .restart local v5       #index:I
    .restart local v6       #len$:I
    .restart local v9       #phoneSetting:Ljava/lang/String;
    .restart local v10       #s:Lcom/android/systemui/PhoneSettingService$SettingMode;
    :cond_1
    invoke-virtual {v10}, Lcom/android/systemui/PhoneSettingService$SettingMode;->name()Ljava/lang/String;

    move-result-object v8

    .line 117
    .local v8, name:Ljava/lang/String;
    const/4 v7, 0x0

    .line 118
    .local v7, mode:I
    const/4 v0, 0x1

    .line 119
    .local v0, applicable:Z
    const-string v11, "Silent"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 120
    invoke-virtual {v9, v5}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v12, 0x30

    if-ne v11, v12, :cond_3

    .line 121
    const/4 v7, 0x0

    .line 129
    :goto_1
    if-eqz v0, :cond_2

    .line 130
    invoke-direct {p0, v7}, Lcom/android/systemui/PhoneSettingService;->setSilentMode(I)V

    .line 110
    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 122
    :cond_3
    invoke-virtual {v9, v5}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v12, 0x31

    if-ne v11, v12, :cond_4

    .line 123
    const/4 v7, 0x1

    goto :goto_1

    .line 124
    :cond_4
    invoke-virtual {v9, v5}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v12, 0x32

    if-ne v11, v12, :cond_5

    .line 125
    const/4 v7, 0x2

    goto :goto_1

    .line 127
    :cond_5
    const/4 v0, 0x0

    goto :goto_1

    .line 133
    :cond_6
    invoke-virtual {v9, v5}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v12, 0x30

    if-ne v11, v12, :cond_7

    .line 134
    const/4 v2, 0x1

    .line 141
    :goto_3
    if-eqz v0, :cond_2

    .line 142
    invoke-direct {p0, v10, v2}, Lcom/android/systemui/PhoneSettingService;->changePhoneSetting(Lcom/android/systemui/PhoneSettingService$SettingMode;Z)V

    goto :goto_2

    .line 135
    :cond_7
    invoke-virtual {v9, v5}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v12, 0x31

    if-ne v11, v12, :cond_8

    .line 136
    const/4 v2, 0x0

    goto :goto_3

    .line 138
    :cond_8
    const/4 v0, 0x0

    goto :goto_3
.end method
