.class public abstract Lcom/google/android/systemui/dagger/SystemUIGoogleModule_ProvideReverseWirelessChargerFactory;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljavax/inject/Provider;


# direct methods
.method public static provideReverseWirelessCharger(Landroid/content/Context;)Ljava/util/Optional;
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f050053

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger;

    invoke-direct {p0}, Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger;-><init>()V

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
