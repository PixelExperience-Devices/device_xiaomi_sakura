/*
 * Copyright (C) 2018 The LineageOS Project
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

package org.lineageos.settings.camera;

import android.app.ActionBar;
import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CompoundButton;
import android.widget.Switch;
import android.widget.TextView;
import androidx.preference.ListPreference;
import androidx.preference.Preference;
import androidx.preference.Preference.OnPreferenceChangeListener;
import androidx.preference.PreferenceCategory;
import androidx.preference.PreferenceFragment;
import androidx.preference.SwitchPreference;

import org.lineageos.settings.R;

public class CameraSettingsFragment extends PreferenceFragment implements
        OnPreferenceChangeListener {

    public static final String PREF_CAMERA = "camera_pref";
    public static final String CAMERA_SYSTEM_PROPERTY = "persist.camera.profile";

    //private TextView mTextView
    private ListPreference mCamera;
    private CameraUtils mCameraUtils;
    //private Handler mHandler = new Handler();

    @Override
    public void onCreatePreferences(Bundle savedInstanceState, String rootKey) {
        addPreferencesFromResource(R.xml.camera_settings);

        mCamera = (ListPreference) findPreference(PREF_CAMERA);
        mCamera.setValue(mCameraUtils.getStringProp(CAMERA_SYSTEM_PROPERTY, "0"));
        mCamera.setOnPreferenceChangeListener(this);
    }

    // @Override
    // public View onCreateView(LayoutInflater inflater, ViewGroup container,
    //                          Bundle savedInstanceState) {
    //     final View view = LayoutInflater.from(getContext()).inflate(R.layout.dirac,
    //             container, false);
    //     ((ViewGroup) view).addView(super.onCreateView(inflater, container, savedInstanceState));
    //     return view;
    // }

    // @Override
    // public void onViewCreated(View view, Bundle savedInstanceState) {
    //     super.onViewCreated(view, savedInstanceState);

    //     boolean enhancerEnabled = true; //mCameraUtils.getintProp(DeviceSettings.CAMERA_SYSTEM_PROPERTY, 0);

    //     mTextView = view.findViewById(R.id.switch_text);
    //     mTextView.setText(getString(enhancerEnabled ?
    //             R.string.switch_bar_on : R.string.switch_bar_off));
    // }

   @Override
    public boolean onPreferenceChange(Preference preference, Object newValue) {
        switch (preference.getKey()) {
            case PREF_CAMERA:
                // mCamera.setValue((String) newValue);
                mCameraUtils.setStringProp(CAMERA_SYSTEM_PROPERTY, (String) newValue);
                return true;
            default: return false;
        }
   }
}
