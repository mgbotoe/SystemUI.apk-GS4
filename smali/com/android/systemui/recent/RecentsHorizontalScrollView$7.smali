.class Lcom/android/systemui/recent/RecentsHorizontalScrollView$7;
.super Ljava/lang/Object;
.source "RecentsHorizontalScrollView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recent/RecentsHorizontalScrollView;->update()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recent/RecentsHorizontalScrollView;


# direct methods
.method constructor <init>(Lcom/android/systemui/recent/RecentsHorizontalScrollView;)V
    .locals 0
    .parameter

    .prologue
    .line 188
    iput-object p1, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView$7;->this$0:Lcom/android/systemui/recent/RecentsHorizontalScrollView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 4

    .prologue
    .line 190
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView$7;->this$0:Lcom/android/systemui/recent/RecentsHorizontalScrollView;

    iget-object v2, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView$7;->this$0:Lcom/android/systemui/recent/RecentsHorizontalScrollView;

    #calls: Lcom/android/systemui/recent/RecentsHorizontalScrollView;->scrollPositionOfMostRecent()I
    invoke-static {v2}, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->access$100(Lcom/android/systemui/recent/RecentsHorizontalScrollView;)I

    move-result v2

    iput v2, v1, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mLastScrollPosition:I

    .line 191
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView$7;->this$0:Lcom/android/systemui/recent/RecentsHorizontalScrollView;

    iget-object v2, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView$7;->this$0:Lcom/android/systemui/recent/RecentsHorizontalScrollView;

    iget v2, v2, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mLastScrollPosition:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->scrollTo(II)V

    .line 192
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView$7;->this$0:Lcom/android/systemui/recent/RecentsHorizontalScrollView;

    invoke-virtual {v1}, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 193
    .local v0, observer:Landroid/view/ViewTreeObserver;
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 194
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 196
    :cond_0
    return-void
.end method
