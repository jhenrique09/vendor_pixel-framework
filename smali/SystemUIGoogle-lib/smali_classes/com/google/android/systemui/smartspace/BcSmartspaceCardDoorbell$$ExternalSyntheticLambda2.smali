.class public final synthetic Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell;

.field public final synthetic f$1:Landroid/content/ContentResolver;

.field public final synthetic f$2:I

.field public final synthetic f$3:F

.field public final synthetic f$4:Ljava/lang/ref/WeakReference;

.field public final synthetic f$5:Ljava/lang/ref/WeakReference;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell;Landroid/content/ContentResolver;IFLjava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;I)V
    .locals 0

    iput p7, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$$ExternalSyntheticLambda2;->$r8$classId:I

    iput-object p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$$ExternalSyntheticLambda2;->f$0:Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell;

    iput-object p2, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$$ExternalSyntheticLambda2;->f$1:Landroid/content/ContentResolver;

    iput p3, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$$ExternalSyntheticLambda2;->f$2:I

    iput p4, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$$ExternalSyntheticLambda2;->f$3:F

    iput-object p5, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$$ExternalSyntheticLambda2;->f$4:Ljava/lang/ref/WeakReference;

    iput-object p6, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$$ExternalSyntheticLambda2;->f$5:Ljava/lang/ref/WeakReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    iget v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$$ExternalSyntheticLambda2;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v2, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$$ExternalSyntheticLambda2;->f$0:Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell;

    iget-object v3, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$$ExternalSyntheticLambda2;->f$1:Landroid/content/ContentResolver;

    iget v4, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$$ExternalSyntheticLambda2;->f$2:I

    iget v5, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$$ExternalSyntheticLambda2;->f$3:F

    iget-object v6, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$$ExternalSyntheticLambda2;->f$4:Ljava/lang/ref/WeakReference;

    iget-object v7, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$$ExternalSyntheticLambda2;->f$5:Ljava/lang/ref/WeakReference;

    check-cast p1, Landroid/net/Uri;

    iget-object p0, v2, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell;->mUriToDrawable:Ljava/util/Map;

    new-instance v0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$$ExternalSyntheticLambda2;

    const/4 v8, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$$ExternalSyntheticLambda2;-><init>(Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell;Landroid/content/ContentResolver;IFLjava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;I)V

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$DrawableWithUri;

    return-object p0

    :goto_0
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$$ExternalSyntheticLambda2;->f$0:Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell;

    iget-object v4, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$$ExternalSyntheticLambda2;->f$1:Landroid/content/ContentResolver;

    iget v3, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$$ExternalSyntheticLambda2;->f$2:I

    iget v2, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$$ExternalSyntheticLambda2;->f$3:F

    iget-object v6, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$$ExternalSyntheticLambda2;->f$4:Ljava/lang/ref/WeakReference;

    iget-object v7, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$$ExternalSyntheticLambda2;->f$5:Ljava/lang/ref/WeakReference;

    move-object v5, p1

    check-cast v5, Landroid/net/Uri;

    sget p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell;->$r8$clinit:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$DrawableWithUri;

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$DrawableWithUri;-><init>(FILandroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;)V

    new-instance p1, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$LoadUriTask;

    iget-object v0, v0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell;->mLatencyInstrumentContext:Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$LatencyInstrumentContext;

    invoke-direct {p1, v0}, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$LoadUriTask;-><init>(Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$LatencyInstrumentContext;)V

    filled-new-array {p0}, [Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$DrawableWithUri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
