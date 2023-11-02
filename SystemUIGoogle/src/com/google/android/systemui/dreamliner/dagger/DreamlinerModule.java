/*
 * Copyright (C) 2023 The PixelExperience Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package com.google.android.systemui.dreamliner.dagger;

import androidx.annotation.NonNull;
import android.content.Context;
import android.os.Handler;

import com.android.systemui.dagger.SysUISingleton;
import com.android.systemui.dagger.qualifiers.Main;
import com.android.systemui.plugins.statusbar.StatusBarStateController;
import com.android.systemui.settings.UserTracker;
import com.android.systemui.statusbar.notification.interruption.NotificationInterruptStateProvider;
import com.android.systemui.statusbar.policy.ConfigurationController;
import com.android.systemui.util.concurrency.DelayableExecutor;
import com.google.android.systemui.dreamliner.DockObserver;
import com.google.android.systemui.dreamliner.DreamlinerUtils;

import dagger.Module;
import dagger.Provides;

@Module
public abstract class DreamlinerModule {
    @Provides
    @SysUISingleton
    static DockObserver provideDockObserver(Context context, StatusBarStateController statusBarStateController,
        NotificationInterruptStateProvider notificationInterruptStateProvider, ConfigurationController configurationController,
        @Main DelayableExecutor delayableExecutor, @NonNull UserTracker userTracker, @Main Handler mainHandler) {
        return new DockObserver(context, DreamlinerUtils.getInstance(context), statusBarStateController,
            notificationInterruptStateProvider, configurationController, delayableExecutor, userTracker, mainHandler);
    }
}
