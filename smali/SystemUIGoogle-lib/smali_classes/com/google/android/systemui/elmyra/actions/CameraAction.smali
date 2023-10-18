.class public final Lcom/google/android/systemui/elmyra/actions/CameraAction;
.super Lcom/google/android/systemui/elmyra/actions/ServiceAction;
.source ""


# instance fields
.field public final mCameraPackageName:Ljava/lang/String;

.field public final mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/android/systemui/statusbar/phone/CentralSurfaces;Lcom/google/android/systemui/elmyra/feedback/AssistInvocationEffect;)V
    .locals 0

    invoke-static {p4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p4

    invoke-direct {p0, p1, p2, p4}, Lcom/google/android/systemui/elmyra/actions/ServiceAction;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Ljava/util/List;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f13039d

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/elmyra/actions/CameraAction;->mCameraPackageName:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/systemui/elmyra/actions/CameraAction;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    return-void
.end method


# virtual methods
.method public final checkSupportedCaller()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/systemui/elmyra/actions/CameraAction;->mCameraPackageName:Ljava/lang/String;

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/actions/ServiceAction;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    :goto_0
    return p0
.end method

.method public final onTrigger(Lcom/google/android/systemui/elmyra/sensors/GestureSensor$DetectionProperties;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/systemui/elmyra/actions/CameraAction;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    check-cast v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->collapseShade()V

    invoke-super {p0, p1}, Lcom/google/android/systemui/elmyra/actions/ServiceAction;->onTrigger(Lcom/google/android/systemui/elmyra/sensors/GestureSensor$DetectionProperties;)V

    return-void
.end method
