.class public abstract Lcom/google/android/systemui/dagger/SystemUIGoogleModule_ProvideWeatherSmartspaceDataPluginFactory;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljavax/inject/Provider;


# direct methods
.method public static provideWeatherSmartspaceDataPlugin()Lcom/google/android/systemui/smartspace/WeatherSmartspaceDataProvider;
    .locals 1

    new-instance v0, Lcom/google/android/systemui/smartspace/WeatherSmartspaceDataProvider;

    invoke-direct {v0}, Lcom/google/android/systemui/smartspace/WeatherSmartspaceDataProvider;-><init>()V

    return-object v0
.end method
