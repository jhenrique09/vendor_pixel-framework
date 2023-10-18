.class public abstract Lcom/google/android/systemui/assist/uihints/OverlappedElementController_Factory;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljavax/inject/Provider;


# direct methods
.method public static newInstance(Lcom/android/systemui/recents/OverviewProxyService;Lcom/android/systemui/keyguard/domain/interactor/KeyguardBottomAreaInteractor;)Lcom/google/android/systemui/assist/uihints/OverlappedElementController;
    .locals 1

    new-instance v0, Lcom/google/android/systemui/assist/uihints/OverlappedElementController;

    invoke-direct {v0, p0, p1}, Lcom/google/android/systemui/assist/uihints/OverlappedElementController;-><init>(Lcom/android/systemui/recents/OverviewProxyService;Lcom/android/systemui/keyguard/domain/interactor/KeyguardBottomAreaInteractor;)V

    return-object v0
.end method
