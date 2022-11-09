
with source as (

    select * from {{ source('raw_netsuite', 'historic_salary_records') }}

),

renamed as (

    select
        bonus_amount_annual,
        date_bonus_depricated,
        date_bonus_effective,
        date_created,
        date_salary_depricated,
        date_salary_effective,
        historic_salary_records_extid,
        historic_salary_records_id,
        is_inactive,
        last_modified_date,
        parent_id,
        salary_amount_annual,
        salarybonus_history_id

    from source

)

select * from renamed
