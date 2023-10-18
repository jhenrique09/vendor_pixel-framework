.class public abstract Lcom/google/android/systemui/statusbar/phone/CentralSurfacesGoogleModule_ProvideReverseChargingViewControllerOptionalFactory;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljavax/inject/Provider;


# direct methods
.method public static provideReverseChargingViewControllerOptional(Lcom/android/systemui/statusbar/policy/BatteryController;Ldagger/Lazy;)Ljava/util/Optional;
    .locals 0

    invoke-interface {p0}, Lcom/android/systemui/statusbar/policy/BatteryController;->isReverseSupported()Z

    move-result p0

    if-eqz p0, :cond_0

    check-cast p1, Ldagger/internal/DoubleCheck;

    invoke-virtual {p1}, Ldagger/internal/DoubleCheck;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/systemui/reversecharging/ReverseChargingViewController;

    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    :goto_0
    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    return-object p0
.end method
