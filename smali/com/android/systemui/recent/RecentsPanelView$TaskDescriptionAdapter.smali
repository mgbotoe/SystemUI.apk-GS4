.class final Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;
.super Landroid/widget/BaseAdapter;
.source "RecentsPanelView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recent/RecentsPanelView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "TaskDescriptionAdapter"
.end annotation


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/android/systemui/recent/RecentsPanelView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/recent/RecentsPanelView;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 196
    iput-object p1, p0, Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 197
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 198
    return-void
.end method


# virtual methods
.method public createView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "parent"

    .prologue
    const/4 v4, 0x0

    .line 213
    iget-object v2, p0, Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget-object v3, p0, Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    #getter for: Lcom/android/systemui/recent/RecentsPanelView;->mRecentItemLayoutId:I
    invoke-static {v3}, Lcom/android/systemui/recent/RecentsPanelView;->access$100(Lcom/android/systemui/recent/RecentsPanelView;)I

    move-result v3

    invoke-virtual {v2, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 214
    .local v0, convertView:Landroid/view/View;
    new-instance v1, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;

    invoke-direct {v1}, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;-><init>()V

    .line 215
    .local v1, holder:Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;
    const v2, 0x7f0900a9

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->thumbnailView:Landroid/view/View;

    .line 216
    const v2, 0x7f0900aa

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->thumbnailViewImage:Landroid/widget/ImageView;

    .line 220
    iget-object v2, p0, Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    #getter for: Lcom/android/systemui/recent/RecentsPanelView;->mRecentTasksLoader:Lcom/android/systemui/recent/RecentTasksLoader;
    invoke-static {v2}, Lcom/android/systemui/recent/RecentsPanelView;->access$200(Lcom/android/systemui/recent/RecentsPanelView;)Lcom/android/systemui/recent/RecentTasksLoader;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 221
    iget-object v2, p0, Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    iget-object v3, p0, Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    #getter for: Lcom/android/systemui/recent/RecentsPanelView;->mRecentTasksLoader:Lcom/android/systemui/recent/RecentTasksLoader;
    invoke-static {v3}, Lcom/android/systemui/recent/RecentsPanelView;->access$200(Lcom/android/systemui/recent/RecentsPanelView;)Lcom/android/systemui/recent/RecentTasksLoader;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/recent/RecentTasksLoader;->getDefaultThumbnail()Landroid/graphics/Bitmap;

    move-result-object v3

    #calls: Lcom/android/systemui/recent/RecentsPanelView;->updateThumbnail(Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;Landroid/graphics/Bitmap;ZZ)V
    invoke-static {v2, v1, v3, v4, v4}, Lcom/android/systemui/recent/RecentsPanelView;->access$300(Lcom/android/systemui/recent/RecentsPanelView;Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;Landroid/graphics/Bitmap;ZZ)V

    .line 223
    :cond_0
    const v2, 0x7f09008e

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->iconView:Landroid/widget/ImageView;

    .line 224
    iget-object v2, p0, Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    #getter for: Lcom/android/systemui/recent/RecentsPanelView;->mRecentTasksLoader:Lcom/android/systemui/recent/RecentTasksLoader;
    invoke-static {v2}, Lcom/android/systemui/recent/RecentsPanelView;->access$200(Lcom/android/systemui/recent/RecentsPanelView;)Lcom/android/systemui/recent/RecentTasksLoader;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 225
    iget-object v2, v1, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->iconView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    #getter for: Lcom/android/systemui/recent/RecentsPanelView;->mRecentTasksLoader:Lcom/android/systemui/recent/RecentTasksLoader;
    invoke-static {v3}, Lcom/android/systemui/recent/RecentsPanelView;->access$200(Lcom/android/systemui/recent/RecentsPanelView;)Lcom/android/systemui/recent/RecentTasksLoader;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/recent/RecentTasksLoader;->getDefaultIcon()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 227
    :cond_1
    const v2, 0x7f09008f

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->labelView:Landroid/widget/TextView;

    .line 228
    const v2, 0x7f0900ab

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->calloutLine:Landroid/view/View;

    .line 229
    const v2, 0x7f0900ac

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->descriptionView:Landroid/widget/TextView;

    .line 231
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 232
    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    #getter for: Lcom/android/systemui/recent/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/systemui/recent/RecentsPanelView;->access$000(Lcom/android/systemui/recent/RecentsPanelView;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    #getter for: Lcom/android/systemui/recent/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/systemui/recent/RecentsPanelView;->access$000(Lcom/android/systemui/recent/RecentsPanelView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 205
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 209
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 236
    if-nez p2, :cond_0

    .line 237
    invoke-virtual {p0, p3}, Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;->createView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 239
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;

    .line 242
    .local v0, holder:Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;
    iget-object v3, p0, Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    #getter for: Lcom/android/systemui/recent/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/systemui/recent/RecentsPanelView;->access$000(Lcom/android/systemui/recent/RecentsPanelView;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, p1

    add-int/lit8 v1, v3, -0x1

    .line 244
    .local v1, index:I
    iget-object v3, p0, Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    #getter for: Lcom/android/systemui/recent/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/systemui/recent/RecentsPanelView;->access$000(Lcom/android/systemui/recent/RecentsPanelView;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recent/TaskDescription;

    .line 246
    .local v2, td:Lcom/android/systemui/recent/TaskDescription;
    iget-object v3, v0, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->labelView:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/android/systemui/recent/TaskDescription;->getLabel()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 247
    iget-object v3, v0, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->thumbnailView:Landroid/view/View;

    invoke-virtual {v2}, Lcom/android/systemui/recent/TaskDescription;->getLabel()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 248
    invoke-virtual {v2}, Lcom/android/systemui/recent/TaskDescription;->isLoaded()Z

    move-result v3

    iput-boolean v3, v0, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->loadedThumbnailAndIcon:Z

    .line 249
    invoke-virtual {v2}, Lcom/android/systemui/recent/TaskDescription;->isLoaded()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 250
    iget-object v3, p0, Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-virtual {v2}, Lcom/android/systemui/recent/TaskDescription;->getThumbnail()Landroid/graphics/Bitmap;

    move-result-object v4

    #calls: Lcom/android/systemui/recent/RecentsPanelView;->updateThumbnail(Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;Landroid/graphics/Bitmap;ZZ)V
    invoke-static {v3, v0, v4, v6, v5}, Lcom/android/systemui/recent/RecentsPanelView;->access$300(Lcom/android/systemui/recent/RecentsPanelView;Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;Landroid/graphics/Bitmap;ZZ)V

    .line 251
    iget-object v3, p0, Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-virtual {v2}, Lcom/android/systemui/recent/TaskDescription;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    #calls: Lcom/android/systemui/recent/RecentsPanelView;->updateIcon(Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;Landroid/graphics/drawable/Drawable;ZZ)V
    invoke-static {v3, v0, v4, v6, v5}, Lcom/android/systemui/recent/RecentsPanelView;->access$400(Lcom/android/systemui/recent/RecentsPanelView;Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;Landroid/graphics/drawable/Drawable;ZZ)V

    .line 298
    :cond_1
    iget-object v3, v0, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->thumbnailView:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 299
    iget-object v3, v0, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->thumbnailView:Landroid/view/View;

    new-instance v4, Lcom/android/systemui/recent/RecentsPanelView$OnLongClickDelegate;

    iget-object v5, p0, Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-direct {v4, v5, p2}, Lcom/android/systemui/recent/RecentsPanelView$OnLongClickDelegate;-><init>(Lcom/android/systemui/recent/RecentsPanelView;Landroid/view/View;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 300
    iput-object v2, v0, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->taskDescription:Lcom/android/systemui/recent/TaskDescription;

    .line 301
    return-object p2
.end method

.method public recycleView(Landroid/view/View;)V
    .locals 8
    .parameter "v"

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x0

    const/high16 v5, 0x3f80

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 305
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;

    .line 306
    .local v0, holder:Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    iget-object v2, p0, Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    #getter for: Lcom/android/systemui/recent/RecentsPanelView;->mRecentTasksLoader:Lcom/android/systemui/recent/RecentTasksLoader;
    invoke-static {v2}, Lcom/android/systemui/recent/RecentsPanelView;->access$200(Lcom/android/systemui/recent/RecentsPanelView;)Lcom/android/systemui/recent/RecentTasksLoader;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/recent/RecentTasksLoader;->getDefaultThumbnail()Landroid/graphics/Bitmap;

    move-result-object v2

    #calls: Lcom/android/systemui/recent/RecentsPanelView;->updateThumbnail(Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;Landroid/graphics/Bitmap;ZZ)V
    invoke-static {v1, v0, v2, v6, v6}, Lcom/android/systemui/recent/RecentsPanelView;->access$300(Lcom/android/systemui/recent/RecentsPanelView;Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;Landroid/graphics/Bitmap;ZZ)V

    .line 307
    iget-object v1, v0, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->iconView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    #getter for: Lcom/android/systemui/recent/RecentsPanelView;->mRecentTasksLoader:Lcom/android/systemui/recent/RecentTasksLoader;
    invoke-static {v2}, Lcom/android/systemui/recent/RecentsPanelView;->access$200(Lcom/android/systemui/recent/RecentsPanelView;)Lcom/android/systemui/recent/RecentTasksLoader;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/recent/RecentTasksLoader;->getDefaultIcon()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 308
    iget-object v1, v0, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 309
    iget-object v1, v0, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->labelView:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 310
    iget-object v1, v0, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->thumbnailView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 311
    iget-object v1, v0, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->thumbnailView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 312
    iget-object v1, v0, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->thumbnailView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 313
    iget-object v1, v0, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->thumbnailView:Landroid/view/View;

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 314
    iget-object v1, v0, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 315
    iget-object v1, v0, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 316
    iget-object v1, v0, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 317
    iget-object v1, v0, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->labelView:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setAlpha(F)V

    .line 318
    iget-object v1, v0, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->labelView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTranslationX(F)V

    .line 319
    iget-object v1, v0, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->labelView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 320
    iget-object v1, v0, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->calloutLine:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 321
    iget-object v1, v0, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->calloutLine:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setAlpha(F)V

    .line 322
    iget-object v1, v0, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->calloutLine:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 323
    iget-object v1, v0, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->calloutLine:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 325
    :cond_0
    iput-object v4, v0, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->taskDescription:Lcom/android/systemui/recent/TaskDescription;

    .line 326
    iput-boolean v6, v0, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->loadedThumbnailAndIcon:Z

    .line 327
    return-void
.end method
