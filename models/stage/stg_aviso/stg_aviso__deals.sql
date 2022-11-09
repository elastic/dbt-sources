
with source as (

    select * from {{ source('raw_aviso', 'deals') }}

),

renamed as (

    select
        close_date,
        forecast_category,
        elastic_forecast_category,
        manager_forecast_category,
        stage,
        account_name,
        opportunity_name,
        amount,
        tcv_amount,
        opportunity_owner,
        next_step,
        manager_comments,
        push_counter,
        project_name,
        type,
        true_contract_expiration_date,
        win_prob,
        parent_opportunity_amount_usd,
        upsell_amount_usd,
        csmnotes,
        legal_notes,
        opportunity_id18_digits,
        forecast_categoryw_rep_override,
        forecast_categoryw_manager_override,
        account_owner_workday_id,
        opportunity_owner_workday_id,
        as_of_opportunity_renewal_amount_usd,
        as_of_opportunity_neamount_usd,
        as_of_overlay_services_amount_usd,
        as_of_overlay_subscriptions_amount_usd,
        as_of_other_amount_usd,
        as_of_support_amount_usd,
        as_of_consulting_amount_usd,
        as_of_bookings_opportunity_neamount_usd,
        as_of_bookings_opportunity_renewal_amount_usd,
        as_of_bookings_services_amount_usd,
        as_of_bookings_subscriptions_amount_usd,
        deal_term,
        geo,
        opp_id

    from source

)

select * from renamed
