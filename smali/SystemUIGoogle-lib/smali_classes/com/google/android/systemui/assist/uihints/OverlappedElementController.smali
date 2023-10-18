.class public final Lcom/google/android/systemui/assist/uihints/OverlappedElementController;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public mAlpha:F

.field public final mKeyguardBottomAreaInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardBottomAreaInteractor;

.field public final mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;


# direct methods
.method public constructor <init>(Lcom/android/systemui/recents/OverviewProxyService;Lcom/android/systemui/keyguard/domain/interactor/KeyguardBottomAreaInteractor;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/google/android/systemui/assist/uihints/OverlappedElementController;->mAlpha:F

    iput-object p1, p0, Lcom/google/android/systemui/assist/uihints/OverlappedElementController;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    iput-object p2, p0, Lcom/google/android/systemui/assist/uihints/OverlappedElementController;->mKeyguardBottomAreaInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardBottomAreaInteractor;

    return-void
.end method


# virtual methods
.method public final setAlpha(F)V
    .locals 6

    iget v0, p0, Lcom/google/android/systemui/assist/uihints/OverlappedElementController;->mAlpha:F

    cmpl-float v1, v0, p1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    cmpg-float v0, p1, v1

    :cond_1
    iput p1, p0, Lcom/google/android/systemui/assist/uihints/OverlappedElementController;->mAlpha:F

    sub-float/2addr v1, p1

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/OverlappedElementController;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "OverviewProxyService"

    :try_start_0
    iget-object v0, v0, Lcom/android/systemui/recents/OverviewProxyService;->mOverviewProxy:Lcom/android/systemui/shared/recents/IOverviewProxy;

    if-eqz v0, :cond_2

    check-cast v0, Lcom/android/systemui/shared/recents/IOverviewProxy$Stub$Proxy;

    iget-object v3, v0, Lcom/android/systemui/shared/recents/IOverviewProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    invoke-static {v3}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string v4, "com.android.systemui.shared.recents.IOverviewProxy"

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Landroid/os/Parcel;->writeFloat(F)V

    iget-object v0, v0, Lcom/android/systemui/shared/recents/IOverviewProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v1, 0x1

    const/16 v4, 0xf

    const/4 v5, 0x0

    invoke-interface {v0, v4, v3, v5, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    throw v0

    :cond_2
    const-string v0, "Failed to get overview proxy for assistant visibility."

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Failed to call notifyAssistantVisibilityChanged()"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/OverlappedElementController;->mKeyguardBottomAreaInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardBottomAreaInteractor;

    iget-object p0, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardBottomAreaInteractor;->repository:Lcom/android/systemui/keyguard/data/repository/KeyguardRepository;

    check-cast p0, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;

    iget-object p0, p0, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;->_bottomAreaAlpha:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/flow/StateFlowImpl;->setValue(Ljava/lang/Object;)V

    return-void
.end method
