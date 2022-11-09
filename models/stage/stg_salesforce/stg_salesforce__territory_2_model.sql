
with source as (

    select * from {{ source('raw_salesforce', 'territory_2_model') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        activated_date,
        created_by_id,
        created_date,
        currency_iso_code,
        deactivated_date,
        description,
        developer_name,
        is_clone_source,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        last_opp_terr_assign_end_date,
        last_run_rules_end_date,
        name,
        state,
        system_modstamp,
        is_sharing_group_delete_done,
        is_opp_unassignment_done

    from source

)

select * from renamed
