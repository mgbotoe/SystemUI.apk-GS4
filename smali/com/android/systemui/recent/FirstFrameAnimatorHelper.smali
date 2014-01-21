.class public Lcom/android/systemui/recent/FirstFrameAnimatorHelper;
.super Ljava/lang/Object;
.source "FirstFrameAnimatorHelper.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# static fields
.field private static final DEBUG:Z = false

.field private static final IDEAL_FRAME_DURATION:I = 0x10

.field private static final MAX_DELAY:I = 0x3e8

.field private static sGlobalDrawListener:Landroid/view/ViewTreeObserver$OnDrawListener;

.field private static sGlobalFrameCounter:J


# instance fields
.field private mAdjustedSecondFrameTime:Z

.field private mHandlingOnAnimationUpdate:Z

.field private mStartFrame:J

.field private mStartTime:J

.field private mTarget:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/animation/ValueAnimator;Landroid/view/View;)V
    .locals 2
    .parameter "animator"
    .parameter "target"

    .prologue
    .line 46
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/systemui/recent/FirstFrameAnimatorHelper;->mStartTime:J

    .line 47
    iput-object p2, p0, Lcom/android/systemui/recent/FirstFrameAnimatorHelper;->mTarget:Landroid/view/View;

    .line 48
    invoke-virtual {p1, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewPropertyAnimator;Landroid/view/View;)V
    .locals 2
    .parameter "vpa"
    .parameter "target"

    .prologue
    .line 51
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/systemui/recent/FirstFrameAnimatorHelper;->mStartTime:J

    .line 52
    iput-object p2, p0, Lcom/android/systemui/recent/FirstFrameAnimatorHelper;->mTarget:Landroid/view/View;

    .line 53
    new-instance v0, Lcom/android/systemui/recent/FirstFrameAnimatorHelper$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/recent/FirstFrameAnimatorHelper$1;-><init>(Lcom/android/systemui/recent/FirstFrameAnimatorHelper;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 60
    return-void
.end method

.method static synthetic access$008()J
    .locals 4

    .prologue
    .line 33
    sget-wide v0, Lcom/android/systemui/recent/FirstFrameAnimatorHelper;->sGlobalFrameCounter:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    sput-wide v2, Lcom/android/systemui/recent/FirstFrameAnimatorHelper;->sGlobalFrameCounter:J

    return-wide v0
.end method

.method public static initializeDrawListener(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 63
    sget-object v0, Lcom/android/systemui/recent/FirstFrameAnimatorHelper;->sGlobalDrawListener:Landroid/view/ViewTreeObserver$OnDrawListener;

    if-eqz v0, :cond_0

    .line 64
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/recent/FirstFrameAnimatorHelper;->sGlobalDrawListener:Landroid/view/ViewTreeObserver$OnDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    .line 66
    :cond_0
    new-instance v0, Lcom/android/systemui/recent/FirstFrameAnimatorHelper$2;

    invoke-direct {v0}, Lcom/android/systemui/recent/FirstFrameAnimatorHelper$2;-><init>()V

    sput-object v0, Lcom/android/systemui/recent/FirstFrameAnimatorHelper;->sGlobalDrawListener:Landroid/view/ViewTreeObserver$OnDrawListener;

    .line 77
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/recent/FirstFrameAnimatorHelper;->sGlobalDrawListener:Landroid/view/ViewTreeObserver$OnDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    .line 78
    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 8
    .parameter "animation"

    .prologue
    .line 81
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 82
    .local v0, currentTime:J
    iget-wide v4, p0, Lcom/android/systemui/recent/FirstFrameAnimatorHelper;->mStartTime:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    .line 83
    sget-wide v4, Lcom/android/systemui/recent/FirstFrameAnimatorHelper;->sGlobalFrameCounter:J

    iput-wide v4, p0, Lcom/android/systemui/recent/FirstFrameAnimatorHelper;->mStartFrame:J

    .line 84
    iput-wide v0, p0, Lcom/android/systemui/recent/FirstFrameAnimatorHelper;->mStartTime:J

    .line 87
    :cond_0
    iget-boolean v4, p0, Lcom/android/systemui/recent/FirstFrameAnimatorHelper;->mHandlingOnAnimationUpdate:Z

    if-nez v4, :cond_2

    .line 88
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/systemui/recent/FirstFrameAnimatorHelper;->mHandlingOnAnimationUpdate:Z

    .line 89
    sget-wide v4, Lcom/android/systemui/recent/FirstFrameAnimatorHelper;->sGlobalFrameCounter:J

    iget-wide v6, p0, Lcom/android/systemui/recent/FirstFrameAnimatorHelper;->mStartFrame:J

    sub-long v2, v4, v6

    .line 93
    .local v2, frameNum:J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_3

    iget-wide v4, p0, Lcom/android/systemui/recent/FirstFrameAnimatorHelper;->mStartTime:J

    const-wide/16 v6, 0x3e8

    add-long/2addr v4, v6

    cmp-long v4, v0, v4

    if-gez v4, :cond_3

    .line 96
    iget-object v4, p0, Lcom/android/systemui/recent/FirstFrameAnimatorHelper;->mTarget:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->invalidate()V

    .line 97
    const-wide/16 v4, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    .line 117
    :cond_1
    :goto_0
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/systemui/recent/FirstFrameAnimatorHelper;->mHandlingOnAnimationUpdate:Z

    .line 121
    .end local v2           #frameNum:J
    :cond_2
    return-void

    .line 102
    .restart local v2       #frameNum:J
    :cond_3
    const-wide/16 v4, 0x1

    cmp-long v4, v2, v4

    if-nez v4, :cond_4

    iget-wide v4, p0, Lcom/android/systemui/recent/FirstFrameAnimatorHelper;->mStartTime:J

    const-wide/16 v6, 0x3e8

    add-long/2addr v4, v6

    cmp-long v4, v0, v4

    if-gez v4, :cond_4

    iget-boolean v4, p0, Lcom/android/systemui/recent/FirstFrameAnimatorHelper;->mAdjustedSecondFrameTime:Z

    if-nez v4, :cond_4

    iget-wide v4, p0, Lcom/android/systemui/recent/FirstFrameAnimatorHelper;->mStartTime:J

    const-wide/16 v6, 0x10

    add-long/2addr v4, v6

    cmp-long v4, v0, v4

    if-lez v4, :cond_4

    .line 105
    const-wide/16 v4, 0x10

    invoke-virtual {p1, v4, v5}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    .line 106
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/systemui/recent/FirstFrameAnimatorHelper;->mAdjustedSecondFrameTime:Z

    goto :goto_0

    .line 108
    :cond_4
    const-wide/16 v4, 0x1

    cmp-long v4, v2, v4

    if-lez v4, :cond_1

    .line 109
    iget-object v4, p0, Lcom/android/systemui/recent/FirstFrameAnimatorHelper;->mTarget:Landroid/view/View;

    new-instance v5, Lcom/android/systemui/recent/FirstFrameAnimatorHelper$3;

    invoke-direct {v5, p0, p1}, Lcom/android/systemui/recent/FirstFrameAnimatorHelper$3;-><init>(Lcom/android/systemui/recent/FirstFrameAnimatorHelper;Landroid/animation/ValueAnimator;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public print(Landroid/animation/ValueAnimator;)V
    .locals 7
    .parameter "animation"

    .prologue
    .line 124
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v1

    long-to-float v1, v1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v2

    long-to-float v2, v2

    div-float v0, v1, v2

    .line 125
    .local v0, flatFraction:F
    const-string v1, "FirstFrameAnimatorHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-wide v3, Lcom/android/systemui/recent/FirstFrameAnimatorHelper;->sGlobalFrameCounter:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-wide v3, Lcom/android/systemui/recent/FirstFrameAnimatorHelper;->sGlobalFrameCounter:J

    iget-wide v5, p0, Lcom/android/systemui/recent/FirstFrameAnimatorHelper;->mStartFrame:J

    sub-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/recent/FirstFrameAnimatorHelper;->mTarget:Landroid/view/View;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " dirty? "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/recent/FirstFrameAnimatorHelper;->mTarget:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->isDirty()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    return-void
.end method
