.class public abstract Lcom/google/android/systemui/dagger/SystemUIGoogleModule_ProvideWirelessChargerFactory;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljavax/inject/Provider;


# direct methods
.method public static provideWirelessCharger()Ljava/util/Optional;
    .locals 2

    new-instance v0, Lcom/google/android/systemui/dreamliner/WirelessChargerImpl;

    invoke-direct {v0}, Lcom/google/android/systemui/dreamliner/WirelessChargerImpl;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/systemui/dreamliner/WirelessChargerImpl;->initHALInterface()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    return-object v0
.end method
