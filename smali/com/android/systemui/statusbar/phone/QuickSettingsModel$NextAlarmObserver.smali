.class Lcom/android/systemui/statusbar/phone/QuickSettingsModel$NextAlarmObserver;
.super Landroid/database/ContentObserver;
.source "QuickSettingsModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/QuickSettingsModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NextAlarmObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/QuickSettingsModel;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "handler"

    .prologue
    .line 112
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$NextAlarmObserver;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    .line 113
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 114
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$NextAlarmObserver;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->onNextAlarmChanged()V

    .line 118
    return-void
.end method

.method public startObserving()V
    .locals 3

    .prologue
    .line 121
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$NextAlarmObserver;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    #getter for: Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->access$000(Lcom/android/systemui/statusbar/phone/QuickSettingsModel;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 122
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v1, "next_alarm_formatted"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 124
    return-void
.end method
