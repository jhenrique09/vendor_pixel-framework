.class public final synthetic Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;I)V
    .locals 0

    iput p2, p0, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer$$ExternalSyntheticLambda4;->$r8$classId:I

    iput-object p1, p0, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer$$ExternalSyntheticLambda4;->f$0:Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget p1, p0, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer$$ExternalSyntheticLambda4;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer$$ExternalSyntheticLambda4;->f$0:Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;

    sget p1, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;->$r8$clinit:I

    invoke-virtual {p0}, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;->onTextClick()V

    return-void

    :goto_0
    iget-object p0, p0, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer$$ExternalSyntheticLambda4;->f$0:Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;

    iget-object p1, p0, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;->mFavoritingIntent:Landroid/app/PendingIntent;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    check-cast p1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    const-string v2, "AMBIENT_MUSIC_CLICK"

    const/4 v3, 0x4

    invoke-virtual {p1, v3, v0, v1, v2}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->wakeUpIfDozing(IJLjava/lang/String;)V

    iget-object p0, p0, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;->mFavoritingIntent:Landroid/app/PendingIntent;

    invoke-static {p0}, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;->sendBroadcastWithoutDismissingKeyguard(Landroid/app/PendingIntent;)V

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;->onTextClick()V

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
