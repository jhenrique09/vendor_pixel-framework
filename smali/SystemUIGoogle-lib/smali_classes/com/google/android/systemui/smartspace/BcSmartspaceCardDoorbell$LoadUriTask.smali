.class public final Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$LoadUriTask;
.super Landroid/os/AsyncTask;
.source ""


# instance fields
.field public final mInstrumentContext:Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$LatencyInstrumentContext;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$LatencyInstrumentContext;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$LoadUriTask;->mInstrumentContext:Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$LatencyInstrumentContext;

    return-void
.end method


# virtual methods
.method public final doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    check-cast p1, [Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$DrawableWithUri;

    const-string p0, "BcSmartspaceCardBell"

    array-length v0, p1

    const/4 v1, 0x0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    aget-object p1, p1, v0

    :try_start_0
    iget-object v0, p1, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$DrawableWithUri;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p1, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$DrawableWithUri;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    iget v2, p1, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$DrawableWithUri;->mHeightInPx:I

    sget v3, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell;->$r8$clinit:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-static {v1, v0}, Landroid/graphics/ImageDecoder;->createSource(Landroid/content/res/Resources;Ljava/io/InputStream;)Landroid/graphics/ImageDecoder$Source;

    move-result-object v0

    new-instance v3, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$$ExternalSyntheticLambda4;

    invoke-direct {v3, v2}, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$$ExternalSyntheticLambda4;-><init>(I)V

    invoke-static {v0, v3}, Landroid/graphics/ImageDecoder;->decodeDrawable(Landroid/graphics/ImageDecoder$Source;Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;)Landroid/graphics/drawable/Drawable;

    move-result-object v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to decode stream: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iput-object v1, p1, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$DrawableWithUri;->mDrawable:Landroid/graphics/drawable/Drawable;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "open uri:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$DrawableWithUri;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " got exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    move-object v1, p1

    :cond_0
    return-object v1
.end method

.method public final onCancelled()V
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$LoadUriTask;->mInstrumentContext:Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$LatencyInstrumentContext;

    invoke-virtual {p0}, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$LatencyInstrumentContext;->cancelInstrument()V

    return-void
.end method

.method public final onPostExecute(Ljava/lang/Object;)V
    .locals 5

    check-cast p1, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$DrawableWithUri;

    if-nez p1, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v0, p1, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$DrawableWithUri;->mDrawable:Landroid/graphics/drawable/Drawable;

    const/16 v1, 0x8

    if-eqz v0, :cond_6

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/DrawableWrapper;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p1, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$DrawableWithUri;->mImageViewWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v2, p1, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$DrawableWithUri;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eq v3, v2, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "imageView requestLayout "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p1, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$DrawableWithUri;->mUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "BcSmartspaceCardBell"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iput v2, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v0}, Landroid/widget/ImageView;->requestLayout()V

    :cond_1
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$LoadUriTask;->mInstrumentContext:Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$LatencyInstrumentContext;

    iget-object v0, p1, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$DrawableWithUri;->mUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$LatencyInstrumentContext;->mUriSet:Ljava/util/Set;

    check-cast v2, Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_5

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$LatencyInstrumentContext;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    const/16 v0, 0x16

    invoke-virtual {p0, v0}, Lcom/android/internal/util/LatencyTracker;->onActionEnd(I)V

    goto :goto_1

    :cond_5
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$LatencyInstrumentContext;->cancelInstrument()V

    goto :goto_1

    :cond_6
    iget-object v0, p1, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$DrawableWithUri;->mImageViewWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/google/android/systemui/smartspace/BcSmartspaceTemplateDataUtils;->updateVisibility(Landroid/view/View;I)V

    iget-object p0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$LoadUriTask;->mInstrumentContext:Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$LatencyInstrumentContext;

    invoke-virtual {p0}, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$LatencyInstrumentContext;->cancelInstrument()V

    :goto_1
    iget-object p0, p1, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$DrawableWithUri;->mLoadingScreenWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    invoke-static {p0, v1}, Lcom/google/android/systemui/smartspace/BcSmartspaceTemplateDataUtils;->updateVisibility(Landroid/view/View;I)V

    :goto_2
    return-void
.end method
