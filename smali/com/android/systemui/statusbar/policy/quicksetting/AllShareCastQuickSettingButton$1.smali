.class Lcom/android/systemui/statusbar/policy/quicksetting/AllShareCastQuickSettingButton$1;
.super Landroid/content/BroadcastReceiver;
.source "AllShareCastQuickSettingButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/quicksetting/AllShareCastQuickSettingButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/quicksetting/AllShareCastQuickSettingButton;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/quicksetting/AllShareCastQuickSettingButton;)V
    .locals 0
    .parameter

    .prologue
    .line 54
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AllShareCastQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/AllShareCastQuickSettingButton;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x1

    .line 57
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, action:Ljava/lang/String;
    const-string v2, "STATUSBAR-AllShareCastQuickSettingButton"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "action: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    const-string v2, "android.net.wifi.p2p.STATE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 72
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AllShareCastQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/AllShareCastQuickSettingButton;

    #getter for: Lcom/android/systemui/statusbar/policy/quicksetting/AllShareCastQuickSettingButton;->mWfdManager:Lcom/samsung/wfd/WfdManager;
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/quicksetting/AllShareCastQuickSettingButton;->access$000(Lcom/android/systemui/statusbar/policy/quicksetting/AllShareCastQuickSettingButton;)Lcom/samsung/wfd/WfdManager;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AllShareCastQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/AllShareCastQuickSettingButton;

    #getter for: Lcom/android/systemui/statusbar/policy/quicksetting/AllShareCastQuickSettingButton;->mWfdManager:Lcom/samsung/wfd/WfdManager;
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/quicksetting/AllShareCastQuickSettingButton;->access$000(Lcom/android/systemui/statusbar/policy/quicksetting/AllShareCastQuickSettingButton;)Lcom/samsung/wfd/WfdManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/wfd/WfdManager;->getWfdMode()I

    move-result v2

    if-ne v2, v6, :cond_1

    .line 73
    const-string v2, "STATUSBAR-AllShareCastQuickSettingButton"

    const-string v3, "side sync is running, skip"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    :cond_0
    :goto_0
    return-void

    .line 77
    :cond_1
    const-string v2, "wifi_p2p_state"

    invoke-virtual {p2, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v5, :cond_0

    .line 79
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AllShareCastQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/AllShareCastQuickSettingButton;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AllShareCastQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/AllShareCastQuickSettingButton;

    #calls: Lcom/android/systemui/statusbar/policy/quicksetting/AllShareCastQuickSettingButton;->handleStateChanged(I)I
    invoke-static {v3, v5}, Lcom/android/systemui/statusbar/policy/quicksetting/AllShareCastQuickSettingButton;->access$100(Lcom/android/systemui/statusbar/policy/quicksetting/AllShareCastQuickSettingButton;I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/policy/quicksetting/AllShareCastQuickSettingButton;->setActivateStatus(I)V

    goto :goto_0

    .line 82
    :cond_2
    const-string v2, "com.samsung.wfd.STATE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 83
    const-string v2, "wfd_state"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 84
    .local v1, wfdState:I
    const-string v2, "STATUSBAR-AllShareCastQuickSettingButton"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Incoming WFD_STATE_CHANGED_ACTION with state "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AllShareCastQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/AllShareCastQuickSettingButton;

    #getter for: Lcom/android/systemui/statusbar/policy/quicksetting/AllShareCastQuickSettingButton;->mWfdManager:Lcom/samsung/wfd/WfdManager;
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/quicksetting/AllShareCastQuickSettingButton;->access$000(Lcom/android/systemui/statusbar/policy/quicksetting/AllShareCastQuickSettingButton;)Lcom/samsung/wfd/WfdManager;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AllShareCastQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/AllShareCastQuickSettingButton;

    #getter for: Lcom/android/systemui/statusbar/policy/quicksetting/AllShareCastQuickSettingButton;->mWfdManager:Lcom/samsung/wfd/WfdManager;
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/quicksetting/AllShareCastQuickSettingButton;->access$000(Lcom/android/systemui/statusbar/policy/quicksetting/AllShareCastQuickSettingButton;)Lcom/samsung/wfd/WfdManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/wfd/WfdManager;->getWfdMode()I

    move-result v2

    if-ne v2, v6, :cond_3

    .line 87
    const-string v2, "STATUSBAR-AllShareCastQuickSettingButton"

    const-string v3, "side sync is running, skip"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 91
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AllShareCastQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/AllShareCastQuickSettingButton;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AllShareCastQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/AllShareCastQuickSettingButton;

    #calls: Lcom/android/systemui/statusbar/policy/quicksetting/AllShareCastQuickSettingButton;->handleStateChanged(I)I
    invoke-static {v3, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/AllShareCastQuickSettingButton;->access$100(Lcom/android/systemui/statusbar/policy/quicksetting/AllShareCastQuickSettingButton;I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/policy/quicksetting/AllShareCastQuickSettingButton;->setActivateStatus(I)V

    goto :goto_0
.end method
